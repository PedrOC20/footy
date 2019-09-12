function notifyMe() {
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
              tag: 'vibration-sample',
              icon: 'https://du.imgix.net/ecomm-products-ui/sball/hero.png?w=200&dpr=2',
              data: { url:"https://www.footylewagon.club/groups/" + messageData.group_id + "/chat_rooms/" + messageData.chat_room_id }
            });
          }
        }
      });
    }
  });
}

export { notifyMe }
