const json = global.cfg;
const file = require('./file.js');
const ipc = require('./ipc.js');
const fs = require('fs');
const {ipcMain} = require("electron");
const {ipcRenderer} = require("electron");

module.exports = {
    setup: function () {
        global.javaPath = global.config.DataPath+"/java";
        file.mkdir(global.javaPath);

        /*
            Specification for java args
            item: {
                section: "Garbage Collection",      The name of the group this argument belongs to
                description: "This flag does this"  Description of the flag
                warning: "Optional warning text",   This displays the text beneath the description to warn users
                placeholder: "Hello World",         This is a placeholder for 'text' type
                flag: "-argFlag",                    The argument flag it self (with minus symbol)
                min: 0,                             Min value for types number and memory types
                max: 10,                            Max value for types number and memory types, "@MEMORY_MAX" uses maximum system memory
                increment: 1,                       Increment value for types number and memory types
                unit: "g",                          Specificies the unit measurement (which is suffixed) on the flag
                type: "num",                        flag value type, number, bool, text, memory (provides kb, mb, gb) and list
                list: [                             Displays a dropdown box with items
                    "Value 1",
                    "Value 2",
                ],
                default: 5,                         The default value number and memory types
                required: "-requiredFlag",          If this option is active, then add this flag
                when: "before"                      Where to palce the required flag, before or after this flag
                enabled: true,                      Is this flag enabled BOOL
            }

            copy: {
                flag: "-paste",
                description: "",
                warning: "",
                placeholder: "Hello World",
                type: "bool",
                default: false,
                min: false,
                max: true,
                increment: null,
                unit: "g",
                list: [
                    "Value 1",
                    "Value 2",
                ],
                required: "-requiredFlag",
                when: "before",
                enabled: true,
            },
         */

        json.create("flags", global.javaPath, {
            // Memory
            Xmn: {
                section: "Memory",
                flag: "-Xmn",
                description: "Decides the size of the young(nursery) space in a JVM. When this parameter is not tuned, you may see some performance implications "+
                    "(for example, large spikes in the memory foot print),  Recommended 1/4 of the total heap size for -Xmn",
                placeholder: "Hello World",
                type: "memory",
                min: 256,
                max: "@MEMORY_MAX",
                increment: 256,
                unit: "m",
                default: 256,
                enabled: true,
            },
            Xms: {
                section: "Memory",
                flag: "-Xms",
                description: "Specifies the initial size, in bytes, of the heap memory allocation pool. This value must be a multiple of 1024 bytes greater than 1 MB.",
                min: 256,
                max: "@MEMORY_MAX",
                increment: 256,
                unit: "m",
                type: "bool",
                default: 256,
                enabled: true,
            },
            Xmx: {
                section: "Memory",
                flag: "-Xmx",
                description: "Specifies the maximum size, in bytes, of the heap memory allocation pool. \n"+
                    "This value must a multiple of 1024 bytes greater than 2 MB",
                min: 1024,
                max: "@MEMORY_MAX",
                increment: 256,
                unit: "m",
                type: "bool",
                default: false,
                enabled: true,
            },
            Xiss: {
                section: "Memory",
                flag: "-Xiss",
                description: "Set the minimum stack size.",
                warning: "",
                min: 2,
                max: 51200,
                increment: 256,
                type: "memory",
                unit: "k",
                default: 2,
                enabled: false,
            },
            Xss: {
                section: "Memory",
                flag: "-Xss",
                description: "Set maximum Java thread stack size.",
                warning: "",
                min: 2,
                max: 51200,
                increment: 256,
                type: "memory",
                unit: "k",
                default: 2,
                enabled: false,
            },
            Xssi: {
                section: "Memory",
                flag: "-Xssi",
                description: "Set Java thread stack size increment.",
                warning: "",
                min: 16,
                max: 51200,
                increment: 16,
                type: "memory",
                unit: "k",
                default: 16,
                enabled: false,
            },

            // Garbage Collection
            Xgcpolicy: {
                section: "Garbage Collection",
                flag: "-Xgcpolicy:",
                description: "Sets the Garbage Collection policy.",
                type: "list",
                list: [
                    "gencon",
                    "optthruput",
                    "optavgpause",
                    "subpool",
                ],
                default: "gencon",
                enabled: false,
            },
            GCCollectors: {
                section: "Garbage Collection",
                flag: "GCCollector",
                description: "Specifies the Garbage Collector to use.  "+
                    "Unless your application has rather strict pause time requirements, first run your application and allow the VM to select a collector. "+
                    "If necessary, adjust the heap size to improve performance. If the performance still does not meet your goals, then use the following guidelines as a starting point for selecting a collector.  " +
                    "If the application has a small data set (up to approximately 100 MB), then" +
                    "select the serial collector with the option -XX:+UseSerialGC.  "+
                    "If the application will be run on a single processor and there are no pause time requirements, then let the VM select the collector, or select the serial collector with the option -XX:+UseSerialGC."+
                    "If (a) peak application performance is the first priority and (b) there are no pause time requirements or pauses of 1 second or longer are acceptable, then let the VM select the collector, or select the parallel collector with -XX:+UseParallelGC."+
                    "If response time is more important than overall throughput and garbage collection pauses must be kept shorter than approximately 1 second, then select the concurrent collector with -XX:+UseConcMarkSweepGC or -XX:+UseG1GC.",
                list: [
                    "-XX:-UseParallelOldGC",
                    "-XX:+UseSerialGC",
                    "-XX:+UseParallelGC",
                    "-XX:+UseConcMarkSweepGC",
                    "-XX:+UseG1GC",
                ],
                type: "list",
                enabled: false,
            },
            Xnoclassgc: {
                section: "Garbage Collection",
                flag: "-Xnoclassgc",
                description: "Disables class garbage collection. Use of this option prevents memory recovery from loaded classes thus increasing overall memory usage.",
                warning: "Enabling this may result in a 'Out Of Memory' Exception",
                type: "bool",
                enabled: false,
            },
            GCTimeLimit: {
                section: "Garbage Collection",
                flag: "-XX:GCTimeLimit=",
                description: "The upper limit on the amount of time spent in garbage collection in percent of total time (default is 98). Used with GCCollector = -XX:+UseParallelGC",
                warning: "Enabling this may result in a 'Out Of Memory' Exception",
                min: 0,
                max: 100,
                increment: 1,
                default: 98,
                type: "number",
                enabled: false,
            },
            GCHeapFreeLimit: {
                section: "Garbage Collection",
                flag: "-XX:GCHeapFreeLimit=",
                description: "The lower limit on the amount of space freed during a garbage collection in percent of the maximum heap (default is 2). Used with GCCollector = -XX:+UseParallelGC",
                min: 0,
                max: 100,
                increment: 1,
                default: 2,
                type: "bool",
                enabled: false,
            },
            Xincgc: {
                section: "Garbage Collection",
                flag: "-Xincgc",
                description: "Enables the incremental garbage collector. The incremental garbage collector, "+
                    "which is turned off by default, will reduce the occasional long garbage-collection pauses during program execution. "+
                    "The incremental garbage collector will at times execute concurrently with the program and during such times will reduce the processor capacity available to the program.",
                type: "bool",
                default: false,
                enabled: false,
            },
            UseAdaptiveSizePolicy: {
                section: "Garbage Collection",
                flag: "-XX:+UseAdaptiveSizePolicy",
                description: "The implementation of -XX:+UseAdaptiveSizePolicy used by default with the -XX:+UseParallelGC garbage collector.  "+
                    "which is turned off by default, will reduce the occasional long garbage-collection pauses during program execution. "+
                    "The incremental garbage collector will at times execute concurrently with the program and during such times will reduce the processor capacity available to the program.",
                type: "bool",
                default: false,
                enabled: false,
            },
            MaxGCPauseMillis: {
                section: "Garbage Collection",
                flag: "-XX:MaxGCPauseMillis=",
                description: "The implementation of -XX:+UseAdaptiveSizePolicy used by default with the -XX:+UseParallelGC garbage collector.  "+
                    "which is turned off by default, will reduce the occasional long garbage-collection pauses during program execution. "+
                    "The incremental garbage collector will at times execute concurrently with the program and during such times will reduce the processor capacity available to the program.",
                warning: "This parameter should be used with caution. A value that is too small will cause the system to spend an excessive amount of time doing garbage collection",
                type: "bool",
                default: false,
                enabled: false,
            },
            GCTimeRatio: {
                section: "Garbage Collection",
                flag: "-XX:GCTimeRatio=",
                description: "A hint to the virtual machine that pause times of nnn milliseconds or less are desired. The VM will adjust the java heap size and other GC-related parameters in an attempt to keep GC-induced pauses shorter than nnn milliseconds. "+
                    "Note that this may cause the VM to reduce overall throughput, and in some cases the VM will not be able to meet the desired pause time goal.  ",
                type: "number",
                warning: "This was selected as a good choice for server applications. A value that is too high will cause the size of the heap to grow to its maximum",
                min: 0,
                max: 99,
                increment: 1,
                default: 99,
                enabled: false,
            },

            // Debug
            Xprof: {
                section: "Debug",
                flag: "-Xprof",
                description: "Profiles the running program, and sends profiling data to standard output. \n"+
                    "This option is provided as a utility that is useful in program development and is not intended to be used in production systems.",
                warning: "Dont enable for production systems as performance wil be reduced.",
                type: "number",
                min: 0,
                max: 100,
                increment: 1,
                default: 0,
                enabled: false,
            },
            Xloggc: {
                section: "Garbage Collection",
                flag: "--Xloggc:",
                description: "Reports on each garbage collection event, as with -verbose:gc, but logs this data to a file. "+
                    "In addition to the information -verbose:gc gives, each reported event will be preceded by the time (in seconds) since the first garbage-collection event.",
                warning: "Always use a local file system for storage of this file to avoid stalling the Java VM due to network latency. \n"+
                    "The file may be truncated in the case of a full file system and logging will continue on the truncated file. \n"+
                    "This option overrides -verbose:gc when both are specified on the command line.",
                type: "text",
                placeholder: "Please enter a filepath",
                default: "",
                enabled: false,
            },

            // Optimizations
            AggressiveOpts: {
                section: "Optimization",
                flag: "-XX:+AggressiveOpts",
                description: "Enables the use of aggressive performance optimization features, which are expected to become default in upcoming releases. "+
                    "By default, this option is disabled and experimental performance features are not used",
                default: false,
                enabled: false,
            },
        });
    },
    run: function () {
        let cfgExists = fs.existsSync(global.config.DataPath+"/java/flags.json");

        if (!cfgExists) {
            // exists has being setup
            this.setup();
        }

        global.javaFlags = json.get("flags", global.config.DataPath+"/java");

        ipcMain.on("java", this.IPC.bind(this)); // add listener
    },
    IPC: function (ev, data) {
        switch (data.action) {
            case "getFlags":
                ipc.send(data.ipc, {action: "javaArgs", data: global.javaFlags});
                break;
        }
    }

};