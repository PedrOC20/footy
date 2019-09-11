const notificate = () => {
  Notification.requestPermission();
  let theTitle = "TIIIITLEEE";
  let theBody = "oiiii";
  let theIcon = "sjsdjijidjisjsdi";

  var options = {
      body: theBody,
      icon: theIcon
  }
  var n = new Notification(theTitle,options);

}


function notifyMe() {
  // Let's check if the browser supports notifications
  if (!("Notification" in window)) {
    alert("This browser does not support desktop notification");
  }

  // Let's check whether notification permissions have alredy been granted
  else if (Notification.permission === "granted") {
    // If it's okay let's create a notification
    var notification = new Notification("Hi there!");
  }

  // Otherwise, we need to ask the user for permission
  else if (Notification.permission !== "denied") {
    Notification.requestPermission(function (permission) {
      // If the user accepts, let's create a notification
      if (permission === "granted") {
        var notification = new Notification("Hi there!");
      }
    });
  }

  // At last, if the user has denied notifications, and you
  // want to be respectful there is no need to bother them any more.
}

export { notifyMe }
