// Listing 5.3  Using JSR to turn the <input> into a slider

connectedCallback() {
    var input = document.createElement("input");
    this.appendChild(input);

    var jsr = new JSR(input, {
        max: this.max,
        values: [this.val],
        sliders: 1,
        grid: false
    });
}