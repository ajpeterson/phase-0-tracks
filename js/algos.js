/*
RELEASE 0 Pseudocode
- Define a function that takes an array as an argument
 - Iterate through the array getting the length of each string
  - set variabe for the length string
 - Use if else if statements to compare the length of the strings
 - Return the string with the longest length
 - Print the longest string to the console

RELEASE 1 Pseudocode
- Define a function that will take two objects as parameters
- Use a for in loop to iterate through each object for its key value pairs
 - set variables for each key value pairs
 - compare values of each object for each key
 - if a key value pair is the same in each object return true
 - else return false

 RELEASE 2 Pseudocode
 - Define a function that will take an integer for an argument
 - Initialize an empty array
 - Set a variable of the alphabet
 - Use a loop to iterate through the alphabet the number of times of the integer
  - each time trhough generate a string of random characters
  - push strings into the empty array
- Return the array
*/

// Release 0 function
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

// Release 1 function
function sameValue(obj1, obj2) {
  if(obj1.breed === obj2.breed) {
   return true;
 }
 else if(obj1.age === obj2.age) {
   return true;
 }
 else if(obj1.name === obj2.name) {
   return true;
 }
 else {
   return false;
 }
}


/* DRIVER CODE to test Release 0
newArray = ["long phrase", "longest phrase", "longer phrase"];
longestPhrase(newArray);

nameArray = ["Nora", "Greta", "Andrew", "Cinnamon"];
longestPhrase(nameArray);

cityArray = ["Seattle", "Chicago", "Paris", "Rome", "London"]
longestPhrase(cityArray);


// DRIVER CODE to test Release 1
dog = {breed: "Saint Bernard", age: 10, name: "Cinnamon"};
doggie = {breed: "Saint Bernard", age: 8, name: "Rooney"};
console.log(sameValue(dog, doggie));
*/
