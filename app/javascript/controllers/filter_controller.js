import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["votes", "card", "container"]

  connect() {
    console.log("Hello from our first Stimulus controller")
  }

  order(){
    const array = []
    this.cardTargets.forEach((element) => {
      array.push(element);
    });
    const cardsarray = array.sort((a,b)=> {
      return parseInt(b.dataset.votes, 10) - parseInt(a.dataset.votes, 10)
    })
    console.log(cardsarray[0])
    this.containerTarget.innerHTML = ""
    cardsarray.forEach((element) => {
      this.containerTarget.insertAdjacentHTML('beforeend', `${element.outerHTML}`);
    })
  }}
