import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["votes"]

  connect() {
    console.log("Hello from our first Stimulus controller")
  }

  order(){
  event.preventDefault()
  console.log(this.votesTarget)

  }
}
