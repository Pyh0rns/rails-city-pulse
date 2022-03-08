import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "form", "firstSection", "secondSection", "thirdSection", "fourthSection", "fifthSecond", "sixthSection", "submitButton" ]

  connect() {
  }
  showSecondSection(event) {
    if (event.keyCode == 13) {
        this.secondSectionTarget.classList.remove("d-none");
    }
  }

  showThirdSection(event) {
    if (event.keyCode == 13) {
      this.thirdSectionTarget.classList.remove("d-none");
    }
  }

  showFourthSection(event) {
    if (event.keyCode == 13) {
      this.fourthSectionTarget.classList.remove("d-none");
    }
  }
// Find a way to store the value given by geocoder by JS
// Maybe use the this.formTarget.value into a variable to feed it back to the form later
// Find a way to fetch the value given by geocoder on this form with this.forInput.value
}
