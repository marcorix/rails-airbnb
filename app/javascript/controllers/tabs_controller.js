import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs"
export default class extends Controller {
  static targets = ["flats", "bookings", "requested", "flatsLink", "bookingsLink", "requestedLink"]
  connect() {
    this.bookingsTarget.classList.add("d-none");
    this.requestedTarget.classList.add("d-none");
  }

  displayFlats(e) {
    this.flatsTarget.classList.remove("d-none");
    this.bookingsTarget.classList.add("d-none");
    this.requestedTarget.classList.add("d-none");

    e.currentTarget.classList.add("active")
    this.bookingsLinkTarget.classList.remove("active")
    this.requestedLinkTarget.classList.remove("active")
  }
  displayBookings(e) {
    this.flatsTarget.classList.add("d-none");
    this.bookingsTarget.classList.remove("d-none");
    this.requestedTarget.classList.add("d-none");

    e.currentTarget.classList.add("active");
    this.flatsLinkTarget.classList.remove("active");
    this.requestedLinkTarget.classList.remove("active");
  }
  displayRequested(e) {
    this.flatsTarget.classList.add("d-none");
    this.bookingsTarget.classList.add("d-none");
    this.requestedTarget.classList.remove("d-none");

    e.currentTarget.classList.add("active");
    this.bookingsLinkTarget.classList.remove("active");
    this.flatsLinkTarget.classList.remove("active");
  }
}
