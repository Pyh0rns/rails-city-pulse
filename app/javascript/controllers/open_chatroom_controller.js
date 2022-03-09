import { Controller } from "stimulus"
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  static targets = [ "open", "viewChatroom", "container", "info"]

  connect() {
  }


  open(event){
    const url = event.currentTarget.dataset.pathAction;
    if (this.containerTarget.innerHTML !== ""){
      return this.containerTarget.innerHTML = "";
    }
    fetch(url, {
      method: "GET",
      headers: { "Accept": "application/json", "X-CSRF-Token": csrfToken()}
    })
    .then((response) => response.json())
    .then((data) => {
      this.containerTarget.innerHTML = data.chatroom;
    })
  }
}
