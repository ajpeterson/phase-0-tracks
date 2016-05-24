// Create a program that takes in a string and returns it reversed

// -declare a function that will take a string as a parameter
// -iterate through that string to return the values in reverse order
//    -use a loop to iterate over the string backwards
//    -print the value to the console

function reverse(phrase) {
  console.log(phrase);
  for (var i = phrase.length - 1; i >= 0; i--)   {
    console.log(phrase[i]);
  }
}

// DRIVER CODE to test functionality (Q3)
// reverse("hello");

//DRIVER CODE to reverse a string of my choosing
var revStr = reverse("Coding is Awesome!");
console.log(revStr);
