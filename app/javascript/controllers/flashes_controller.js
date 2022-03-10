
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["notice"]

  connect() {
    this.demo()
  }

  sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
  }

  async demo() {
    for (let i = 0; i < 3; i++) {
        console.log(`Waiting ${i} seconds...`);
        await this.sleep(i * 1000);
    }
  this.noticeTarget.style.display = "none"
  }
}
