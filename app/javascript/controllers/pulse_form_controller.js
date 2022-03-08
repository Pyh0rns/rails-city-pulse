import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "form", "firstSection", "secondSection", "thirdSection", "fourthSection", "fifthSecond", "sixthSection", "submitButton" ]

  connect() {
console.log(this.formTarget)
  }

  showSecondSection(event) {
      if (event.keyCode == 13) {
        this.secondSectionTarget.classList.remove("d-none");
    console.log("Coucou")
      }


  }
}
