// Variables and data types
const name = "Alice"; // String variable
let age = 25; // Number variable

// Control flow statements
if (age >= 18) {
  console.log("You are old enough to vote.");
} else {
  console.log("You are not old enough to vote.");
}

for (let i = 0; i < 10; i++) {
  console.log(i);
}

// Functions
function greet(name) {
  console.log(`Hello, ${name}!`); //string formatting
}

const greet1 = (name) => {
    console.log(`Hello ${name}`)
}

greet("Alice");

// Objects
const person = {
  name: "Alice",
  age: 25,
};

console.log(person.name); // "Alice"

// Arrays
const numbers = [1, 2, 3, 4, 5];
const zerosArray = new Array(15).fill(0);

console.log(numbers[0]); // 1
console.log(zerosArray); // [0, 0 ... 0]


// Classes
class Person {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }

  greet() {
    console.log(`Hello, my name is ${this.name}.`);
  }
}

const alice = new Person("Alice", 25);

alice.greet(); // "Hello, my name is Alice."
greet("Alice"); // "Hello, Alice"