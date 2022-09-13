import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "hideable" ]

  connect() {
    // this.element.textContent = "Hello World!"
  }

  addFields() {
    this.hideCurrentElem()
  }

  hideCurrentElem() {
    if (this.hasHideableTarget) {
      this.hideableTarget.hidden = true
    }
    if (this.hasShowableTarget) {
      this.showableTarget.hidden = false
    }
  }
}
