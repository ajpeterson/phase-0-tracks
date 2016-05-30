/*
RELEASE 0 Pseudocode
- Define a function that takes an array as an argument
 - Iterate through the array getting the length of each string
  - set variabes for the length of each string
 - Use if else if statements to compare the length of the strings
 - Return the string with the longest length
 - Print the longest string to the console
*/

function longestPhrase(array) {
  //console.log(array);
  for (var i = 0; i <= array.length - 1; i++)  {
  	console.log(array[i].length);

  }
}

newArray = ["long phrase", "longest phrase", "longer phrase"];
longestPhrase(newArray);
