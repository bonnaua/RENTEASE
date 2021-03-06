// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";


// Internal imports, e.g:
import { initSelect2 } from '../plugins/init_select2';
import {selectHousings} from '../plugins/select_expense';
import {selectCategory} from '../plugins/select_expense';
import {selectHousings2} from '../plugins/select_expense';
import { dragElement } from '../components/searchbar';
import { initMapbox } from '../plugins/init_mapbox';
import {initChartJS} from '../plugins/init_chart';
import { displayAccounting } from '../components/accounting_btn';

document.addEventListener('turbolinks:visit', () => {
  $('#loading').show();
});

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  initSelect2();
  initMapbox();
  selectHousings();
  selectCategory();
  selectHousings2();
  initChartJS();
  $('#loading').hide();

  if (document.getElementById('btn-expenses')) {
    displayAccounting();
  }
  if (document.querySelector('.btn-submit')) {
    const btns = document.querySelectorAll('.btn-submit');
    btns.forEach((btn) => {
      btn.addEventListener('click', (event) => {
        const loader = document.getElementById('loading');
        loader.style.display = null;
      });
    });
  }
});
