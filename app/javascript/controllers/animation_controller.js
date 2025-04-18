import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.resetAndPlayAnimations()
  }

  resetAndPlayAnimations() {
    // Reset all animated elements
    const animatedElements = this.element.querySelectorAll('[data-animation]')
    animatedElements.forEach(element => {
      element.style.animation = 'none'
      element.offsetHeight // Trigger reflow
      element.style.animation = null
    })
  }
} 