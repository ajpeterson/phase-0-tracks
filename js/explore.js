// Create a program that takes in a string and returns it reversed

// -declare a function that will take a string as a parameter
// -iterate through that string to return the characters in reverse order
//    -use a loop to iterate over the string of characters in reverse
//    -print the characters to the console
//    -store the result in a variable
// -Declare a function that will take our new variable as an argument
// -Add the individual character strings to eachother
//    -use a loop to iterate through the indvidual character strings
//    -add the strings to together to form one string of the phrase in reverse
//    -log the result to the console

function reverse(phrase) {
  /* Print phrase to console to ensure argument was received without error */
  console.log(phrase);

  /* Loop through phrase using its length to establish parameters of loop*/
  for (var i = phrase.length - 1; i >= 0; i--)   {
    var revChar = (phrase[i]);
    /* Print to console to ensure result of loop is stored in variable */
  console.log(revChar);

  }

}

// DRIVER CODE to test functionality (Q3)
// reverse("hello");

//DRIVER CODE to reverse a string of my choosing
(reverse("Coding is Awesome!"));

var test = true;
if (test !== false) {
	console.log(reverse("Coding is awesome!"));
}
