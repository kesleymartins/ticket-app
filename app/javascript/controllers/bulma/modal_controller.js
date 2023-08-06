import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bulma--modal"
export default class extends Controller {
  connect() {
    const closeButton = this.element.querySelector('button.delete')

    closeButton.addEventListener('click', event => {
      event.preventDefault()

      this.element.classList.remove('is-active')
    })
  }
}
