import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-flats"
export default class extends Controller {
  static targets = ["form", "input", "list"]

  connect() {
    // console.log(this.formTarget)
    // console.log(this.inputTarget)
    // console.log(this.listTarget)
  }

  update() {
    const url = `${this.formTarget.action}/?query=${this.inputTarget.value}`;
    fetch(url, { headers: { Accept: "text/plain" } })
      .then(res => res.text())
      .then((data) => {
        this.listTarget.innerHTML = data;
        console.log(data);
      });
  }
}
