import {Controller} from '@hotwired/stimulus';

// Connects to data-controller="flash"
export default class extends Controller {
  connect() {
    setTimeout(() => {
      document.querySelectorAll('.flash').forEach((element) => {
        element.outerHTML = '';
      });
    }, 3000);
  }

  dismiss(event) {
    event.target.closest('.flash').outerHTML = '';
  }
}