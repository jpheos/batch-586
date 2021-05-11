const monthString = "Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec";

const months = monthString.split(",");


// => [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ]
console.log(months.length);


const beatles = ["paul", "john", "ringo", "george"];
beatles.forEach((beatle) => {
  console.log(beatle);
});


const age = 18;

if (age >= 18) {
  console.log("c'est cool");
} else {
  console.log("c'est pas cool");
}


const student = {
  firstName: "Boris",
  lastName: "Paillard"
};

// const student = {
//     "firstName": "Boris",
//     "lastName": "Paillard"
// };




// const square = (x, y) => {
//     return x * x;
// };

// Or even shorter, with **implicit** return.
const square = (x, y) => x * x;

const adjectifier = adjectif => sentence => `${adjectif} ${sentence}`;

const coolifier = adjectifier('cool');
const nulifier = adjectifier('nul');


console.log(coolifier("prof"));
