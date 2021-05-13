import { searchMovies } from './movies';
import { initSortable } from './plugins/sortable';
import { initMarkdown } from './plugins/markdown-it';
import { initSelect2 } from './plugins/select2';

const searchForm = document.querySelector("#search-movies");

searchForm.addEventListener("submit", (event) => {
  event.preventDefault();
  const searchInput = document.querySelector("#keyword");
  searchMovies(searchInput.value);
});

initSortable();
initMarkdown();
initSelect2();
