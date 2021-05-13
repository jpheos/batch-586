const movieList = document.querySelector('#movies');

const updateMoviesList = (movies) => {
  movieList.innerHTML = '';
  movies.forEach((movie) => {
    const htmlString = `<li class="list-inline-item">
      <img src="${movie.Poster}" alt="" width="120">
    </li>`;
    movieList.insertAdjacentHTML("beforeend", htmlString);
  });
};

const searchMovies = (movieName) => {
  fetch(`http://www.omdbapi.com/?s=${movieName}&apikey=adf1f2d7`)
    .then(response => response.json())
    .then((data) => {
      const movies = data.Search;
      updateMoviesList(movies);
    });
};

export { searchMovies };


// npm install package_name
// yarn add package_name
