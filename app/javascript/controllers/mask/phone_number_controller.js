import { Controller } from "@hotwired/stimulus"
import Cleave from 'cleave.js'

// Connects to data-controller="mask--phone-number"
export default class extends Controller {
  connect() {
    new Cleave('.phone-number', {
      delimiters: ['(', ') ', ' ', '-'],
      blocks: [0, 3, 1, 4, 4],
      numericOnly: true,
    })
  }
}
