import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="user-avatars"
export default class extends Controller {
  static targets = ["input", "userAvatar"]
  connect() {

  }
  user_avatar(){
    let input = this.inputTarget;
    let userAvatar = this.userAvatarTarget;
    let file = input.files[0];
    let reader = new FileReader();

    reader.onloadend = function (){
      userAvatar.src = reader.result;
    }

    if(file) {
      reader.readAsDataURL(file);
    } else {
      userAvatar.src = "default-avatar.png";
    }
  }
}
