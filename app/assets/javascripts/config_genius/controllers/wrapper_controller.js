import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="wrapper"
export default class extends Controller {
  connect() {
    var el = document.getElementById("wrapper");
    var toggleButton = document.getElementById("menu-toggle");

    toggleButton.onclick = function () {
      el.classList.toggle("toggled");
    };
  }
}
