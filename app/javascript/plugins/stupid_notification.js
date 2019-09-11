function sendMessage() {
  let dataMessageElement = document.querySelector(".home-background");
  if (dataMessageElement) {
    let messageData = JSON.parse(dataMessageElement.dataset.message);
    if (Object.entries(messageData).length > 0) {
      let options = {
          body: messageData.content,
          icon: ""
      };
      let notification = new Notification(messageData.first_name, options);
      notification.onclick = function(event) {
        event.preventDefault(); // prevent the browser from focusing the Notification's tab
        window.open("groups/" + messageData.group_id + "/chat_rooms/" + messageData.chat_room_id, "_self");
      }
    }
  }
}


function notifyMe() {
  // Let's check if the browser supports notifications
  if (!("Notification" in window)) {
    alert("This browser does not support desktop notification");
  }

  // Let's check whether notification permissions have alredy been granted
  else if (Notification.permission === "granted") {
    // If it's okay let's create a notification
    sendMessage();
  }

  // Otherwise, we need to ask the user for permission
  else if (Notification.permission !== "denied") {
    Notification.requestPermission(function (permission) {
      // If the user accepts, let's create a notification
      if (permission === "granted") {
        sendMessage();
      }
    });
  }

  // At last, if the user has denied notifications, and you
  // want to be respectful there is no need to bother them any more.
}

export { notifyMe }
