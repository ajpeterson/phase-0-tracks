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
  var longestLength = 0;
  var longestString = "";

  for (var i = 0; i <= array.length - 1; i++)  {
    if (array[i].length > longestLength) {
      longestLength = array[i].length;
      longestString = array[i];
    }
  }
  console.log(longestString);
}

/* DRIVER CODE to test Release 0 */
newArray = ["long phrase", "longest phrase", "longer phrase"];
longestPhrase(newArray);
