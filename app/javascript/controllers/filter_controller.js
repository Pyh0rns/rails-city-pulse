import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["votes", "card", "container", "categ"]

  connect() {
  }

  order(){
    const array = []
    this.cardTargets.forEach((element) => {
      array.push(element);
    });
    const cardsarray = array.sort((a,b)=> {
      return parseInt(b.dataset.votes, 10) - parseInt(a.dataset.votes, 10)
    })
    this.containerTarget.innerHTML = ""
    cardsarray.forEach((element) => {
      this.containerTarget.insertAdjacentHTML('beforeend', `${element.outerHTML}`);
    })
  }
  done(){
    const array = []
    this.cardTargets.forEach((element) => {
      array.push(element);
    });
    const cardsarray = array.filter( array =>  array.dataset.done === 'validé')
    this.containerTarget.innerHTML = ""
    cardsarray.forEach((element) => {
      this.containerTarget.insertAdjacentHTML('beforeend', `${element.outerHTML}`)
    })
  }

  categ(event){
    const array = []
    console.log('Hello')
    this.cardTargets.forEach((element) => {
      array.push(element);
    });
    const cardsarray = array.filter(element =>  element.dataset.category === event.currentTarget.innerHTML)
    this.containerTarget.innerHTML = ""
    cardsarray.forEach((element) => {
      this.containerTarget.insertAdjacentHTML('beforeend', `${element.outerHTML}`)
    })
  }
}
