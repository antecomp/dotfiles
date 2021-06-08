if(window.navigator.onLine == false) {
	offline = document.createElement("div");
	offline.textContent = "no connection"
	offline.id = "OFFLINE"
	document.body.appendChild(offline);
	reload = document.createElement("button")
	reload.textContent = "retry"
	reload.id = "reload"
	reload.addEventListener("click", () => {
		window.location.reload(true)
	})
	offline.appendChild(reload)
}
