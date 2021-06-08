var slider = document.getElementById("lainvolume");
var player = document.getElementById("player");
player.volume = (slider.value * 0.01);

slider.oninput = function() {
  player.volume = (this.value * 0.01);
}
