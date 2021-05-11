// Find element
// Modify this element

const p = document.querySelector('#title');
p.innerText = "J'ai changé le DOM";

const list = document.querySelector("ul");
console.log(list);

list.insertAdjacentHTML("afterbegin", "<li>Luke</li>");

const greenItem = list.querySelector("li.green");
console.log(greenItem.innerText);

const allItems = document.querySelectorAll("ul li");
// const firstItem = document.querySelector("ul li");

// console.log(firstItem);

const allItemsArray = Array.from(allItems);

// setInterval(() => {
//     list.style.display = 'none';
// }, 1000)

// setInterval(() => {
//     list.style.display = '';
//     list.classList.toggle("red");
// }, 700)


// allItemsArray.forEach(item => item.innerText = "Clément")


// const activeItem = document.querySelector("ul .active");
// console.log(activeItem);

const emailInput = document.querySelector('#email');
emailInput.value = "clement.malfroy@gmail.com";

const linkedinLink = document.querySelector('a');

console.log(linkedinLink.attributes.href.value);

console.log(list.dataset.players.split(','));


list.addEventListener('click', (event) => {
  console.log(event);
  p.innerText += "Clement";
  p.addEventListener('click', (event) => {
    console.log("Tu as fais les choses dans le bon sens");
  });

  // list.classList.toggle('red');
  allItemsArray.forEach(item => item.innerText += "t");
});
