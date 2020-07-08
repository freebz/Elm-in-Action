// Listing 5.4  Broadcasting a ChangeEvent

connectedCallback() {
    ...
    
    var rangeSliderNode = this;

    jsr.addEventListener("update", function(elem, value) {
        var event = new CustomEvent("slide", {
            detail: {userSlidTo: value}
        });

        rangeSliderNode.dispatchEvent(event);
    });
}