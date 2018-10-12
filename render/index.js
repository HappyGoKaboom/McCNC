// ###########################      HTML        ###################################
function body () {
    // body of the document
    $.content = document.createDocumentFragment();


}

// ###########################      STYLE        ###################################
$.styler.create({
    "@body": {
        overflow: "hidden",
        backgroundColor: "white",
        padding: "0",
        margin: "0",
    },
});

// ###########################      FUNCTIONAL        ###################################

// ###########################      DOM        ##########################################
window.addEventListener("DOMContentLoaded", ready, false);

function ready () {
    // The dom is ready for adding content ie. document.body (so appendChild() works)
    document.body.appendChild($.content);
}

body(); // generate content
