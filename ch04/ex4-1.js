// Listing 4.1  JavaScript functions that have side effects

function storeStuff() {
    localStorage.stuff = "foo";
    return 1;
}

function editField(object) {
    object.foo = "bar";
    return object;
}

var something = 1;

function editVar() {
    something = 2;
    return 0;
}