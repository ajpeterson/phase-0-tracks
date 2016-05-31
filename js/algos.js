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
- Iterate through each object
  - create an array of the object keys for each object
    - define a function that will take the two key arrays as arguments
      - use a loop to compare the keys
        - use if else if conditional statements to see if the keys match
  - create an array of the object values for each object
    - define a function that will take the two value arrays as arguments
     - use a loop to compare the values
     - use if else if conditional statements to see if the values match
- use if else if statements to see if keys function is true
- use if else if statements to see if values function is true
  - if both are true return true
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
  var length = array.length - 1;

  for (var i = 0; i <= length; i++)  {
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

// Release 2 function
function randomString(int) {
	var alpha = "abcdefghijklmnopqrstuvwxyz";
	var newString = "";
	var stringArray = [];

  for (var i = 1; i < int + 1; i++ ) {
  	newString += alpha.charAt(Math.floor(Math.random() * alpha.length));
  	stringArray.push(newString);
  }
	return(stringArray);
}

/* DRIVER CODE to test Release 0
newArray = ["long phrase", "longest phrase", "longer phrase"];
longestPhrase(newArray);

nameArray = ["Nora", "Greta", "Andrew", "Cinnamon"];
longestPhrase(nameArray);

cityArray = ["Seattle", "Chicago", "Paris", "Rome", "London"]
longestPhrase(cityArray);


// DRIVER CODE to test Release 1
------Will return false since no key value pair matches------
dog = {breed: "Labrador", age: 10, name: "Cinnamon"};
doggie = {breed: "Saint Bernard", age: 8, name: "Rooney"};
console.log(sameValue(dog, doggie));

------Will return true since the age key has the same value------
dog = {breed: "Labrador", age: 8, name: "Cinnamon"};
doggie = {breed: "Saint Bernard", age: 8, name: "Rooney"};
console.log(sameValue(dog, doggie));
*/

//DRIVER Code to test Release 2
for (var n = 1; n <= 10; n++) {
	var stringArray = randomString(5);
	console.log(stringArray);
	longestPhrase(stringArray);
}
