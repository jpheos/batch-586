const movieList = document.querySelector('#movies');
const searchForm = document.querySelector("#search-movies");

const searchMovies = (movieName) => {
  fetch(`http://www.omdbapi.com/?s=${movieName}&apikey=adf1f2d7`)
    .then(response => response.json())
    .then((data) => {
      const movies = data.Search;
      movies.forEach((movie) => {
        const htmlString = `<li class="list-inline-item">
        <img src="${movie.Poster}" alt="">
        <p>${movie.Title}</p>
      </li>`;
        movieList.insertAdjacentHTML("beforeend", htmlString);
      });
    });
};

const searchAlgoliaPlaces = (event) => {
  fetch("https://places-dsn.algolia.net/1/places/query", {
    method: "POST",
    body: JSON.stringify({ query: "Villeurbanne" })
  })
    .then(response => response.json())
    .then((data) => {
      console.log(data); // Look at local_names.default
    });
};


// searchForm.addEventListener("submit", (event) => {
//   event.preventDefault();
//   const searchInput = document.querySelector("#keyword");
//   movieList.innerHTML = '';
//   searchMovies(searchInput.value);
// });


console.log('Je suis apres dans le code');

searchAlgoliaPlaces();

const searchInput = document.querySelector("#keyword");

searchInput.addEventListener('keyup', () => {
  searchMovies(searchInput.value);
});
