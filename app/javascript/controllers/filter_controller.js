import { Controller } from "@hotwired/stimulus"
import configPath from "@rails/webpacker/package/configPath";

export default class extends Controller {
  static targets = ["votes", "card", "container", "categ", "btn"]

  connect() {
  }

  filter_by(event){
    const type = event.currentTarget.dataset.filterType
    const cards = Array.from(this.cardTargets)
    this.clear(cards);
    this.fix();

    switch (type) {
      case 'order':
        this.order(cards);
        break;

      case 'done':
        this.done(cards);
        break;

      case 'category':
        this.categ(event, cards);
        break;

      case 'recent':
        this.clear(cards);
        break;

      default:
        break;
    }
  }

  order(cards){
    const cardsarray = cards.sort((a,b)=> {
      return parseInt(b.dataset.votes, 10) - parseInt(a.dataset.votes, 10)
    })
    this.containerTarget.innerHTML = ""
    cardsarray.forEach((element) => {
      this.containerTarget.insertAdjacentHTML('beforeend', `${element.outerHTML}`);
    })
  }
  done(cards){
    cards.forEach((card) =>{
      if (card.dataset.done !== 'validé' && !card.classList.contains('card-hidden')){
        card.classList.add('card-hidden')
      }
    })
  }
  categ(event, cards){
    cards.forEach((card) => {
      if (card.dataset.category !== event.currentTarget.innerHTML && !card.classList.contains('card-hidden')){
        card.classList.add('card-hidden')
      }
    })
  }

  clear(cards){
    cards.forEach((card) => {
      card.classList.remove("card-hidden");
    })
  }

  fix(){
    this.btnTargets.forEach((btn) => {
      btn.addEventListener('click', (event) =>{
        console.log(event)
        event.target.classList.toggle('buttonfiltered')
      });
    });
  }
}
