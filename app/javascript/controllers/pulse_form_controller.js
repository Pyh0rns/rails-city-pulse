import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "firstInput", "secondInput", "fourthInput", "fifthInput", "sixthInput", "form", "firstSection", "secondSection", "thirdSection", "fourthSection", "geocoderInput", "fifthSecond", "sixthSection", "submitButton" ]

  connect() {
    this.firstInputTarget.focus();
  }

  // Solution
  showSecondSection(event) {
    if (event.keyCode == 13) {
      this.secondSectionTarget.classList.remove("d-none");
      this.firstInputTarget.blur();
      this.secondInputTarget.focus();
      this.secondSectionTarget.scrollIntoView();
    }
  }
  // Geocoder

  showThirdSection(event) {
    if (event.keyCode == 13) {
      this.thirdSectionTarget.classList.remove("d-none");
      this.secondInputTarget.blur();
      this.geocoderInputTarget.focus();
      this.thirdSectionTarget.scrollIntoView();
    }
  }
  // Titre

  showFourthSection(event) {
    if (event.keyCode == 13) {
      this.fourthSectionTarget.classList.remove("d-none");
      this.geocoderInputTarget.blur();
      this.fourthInputTarget.focus();
      this.fourthSectionTarget.scrollIntoView();
    }
  }
  // Photo

  showFifthSection(event) {
    if (event.keyCode == 13) {
      this.fifthSectionTarget.classList.remove("d-none");
      this.fourthInputTarget.blur();
      this.fifthInputTarget.focus();
      this.fifthSectionTarget.scrollIntoView();
    }
  }

    // Catégories

    // Submit

// Find a way to store the value given by geocoder by JS
// Maybe use the this.formTarget.value into a variable to feed it back to the form later
// Find a way to fetch the value given by geocoder on this form with this.forInput.value
}
