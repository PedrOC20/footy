function showNotification() {
  Notification.requestPermission(function(result) {
    if (result === 'granted') {
      navigator.serviceWorker.ready.then(function(registration) {

        let dataMessageElement = document.querySelector(".home-background");
        if (dataMessageElement) {
          let messageData = JSON.parse(dataMessageElement.dataset.message);
          if (Object.entries(messageData).length > 0) {
            registration.showNotification(messageData.first_name, {
              body: messageData.content,
              vibrate: [200, 100, 200, 100, 200, 100, 200],
              tag: 'vibration-sample'
            });



          }
        }
      });
    }
  });
}


function notifyMe() {
  // Let's check if the browser supports notifications
/*  if (!("Notification" in window)) {
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
*/

  showNotification();
  // At last, if the user has denied notifications, and you
  // want to be respectful there is no need to bother them any more.
}

export { notifyMe }
