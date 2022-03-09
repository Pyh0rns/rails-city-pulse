import { Controller } from "stimulus"


export default class extends Controller {
  static targets = [ "firstInput", "secondInput", "thirdInput", "fourthInput", "fifthInput", "sixthInput", "form", "firstSection", "secondSection", "thirdSection", "fourthSection", "geocoderInput", "fifthSection", "sixthSection", "submitButton" ]

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
  // Titre


  showThirdSection(event) {
    if (event.keyCode == 13) {
      this.thirdSectionTarget.classList.remove("d-none");
      this.secondInputTarget.blur();
      this.thirdInputTarget.focus();
      this.thirdSectionTarget.scrollIntoView();
      console.log(this.thirdInputTarget);
    }
  }
// Photo


  showFourthSection(event) {
    if (event.keyCode == 13) {
      this.fourthSectionTarget.classList.remove("d-none");
      this.thirdInputTarget.blur();
      this.fourthSectionTarget.scrollIntoView();
    }
  }


// // Catégories
// On change pour changer l'input quand la photo est mise

  showFifthSection() {
      this.fifthSectionTarget.classList.remove("d-none");
      this.fourthInputTarget.blur();
      this.fifthInputTarget.focus();
      this.fifthSectionTarget.scrollIntoView();

  }
// // Géo

  showSixthSection(event) {
    if (event.keyCode == 13) {
      this.sixthSectionTarget.classList.remove("d-none");
      document.querySelector('.mapboxgl-ctrl-geocoder--input').value = this.geocoderInputTarget.value;
      console.log(this.geocoderInputTarget);
      this.fifthInputTarget.blur();
      document.querySelector('.mapboxgl-ctrl-geocoder--input').focus();
      this.submitButtonTarget.classList.remove("d-none");
    }
  }
}


    // Submit

    // showSubmitButton(event) {
    //   if (event.keyCode == 13) {
    //   }
    // }

// Find a way to store the value given by geocoder by JS
// Maybe use the this.formTarget.value into a variable to feed it back to the form later
// Find a way to fetch the value given by geocoder on this form with this.forInput.value
