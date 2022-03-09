import { Controller } from "stimulus"
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  static targets = [ "open", "viewChatroom", "container" ]

  connect() {
  }


  open(){
    // console.log(this.viewChatroomTarget)
    const url = this.openTarget.dataset.pathAction;
    console.log(url);
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
