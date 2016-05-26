var horseColor = ["metallic gold", "rave green", "crimson", "purple"]
var horseName = ["Rooney", "Giggs", "Larry", "Grace"]

// Code to add a color to horseColor
horseColor.push("highlighter pink");

// Code to add a name to horseName
horseName.push("Bud");


horses = [];

for (var i=0; i<horseName.length; i++){
	horses[horseName[i]] = horseColor[i]
}

// Driver Code
// Test to ensure a name and a color were added to their respective arrays
console.log(horseName);
console.log(horseColor);

// Test loop to ensure an object was created with names as keys and colors as values.
console.log(horses);



function Cars(transmission,year,model){

console.log("Creating a new car for you!")
this.transmission=transmission;
this.year=year;
this.model=model;

this.startcar=function(){
	console.log("starting your"+transmission+year+model)}
console.log("car complete!" )
}

var honda=new Cars("automatic",2013,"Civic");
console.log(honda);
honda.startcar();
var ford = new Cars("manual", 1990, "Mustang");
console.log(ford);
ford.startcar();
var toyota = new Cars("automatic ", 1998, " Corolla");
console.log(toyota);
toyota.startcar();
