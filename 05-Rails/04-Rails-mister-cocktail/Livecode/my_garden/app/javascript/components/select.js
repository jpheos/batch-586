import $ from 'jquery';
import select2 from 'select2';

const initSelect2 = () => {
  console.log($('.multiple-select'));
  $('.multiple-select').select2();
}

export { initSelect2 }
