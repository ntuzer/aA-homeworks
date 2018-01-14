document.addEventListener("DOMContentLoaded", function(){
  const el = document.getElementById('mycanvas');
  el.width = 500;
  el.height = 500;
  const ctx = el.getContext('2d');
  ctx.fillStyle = 'red';
  ctx.fillRect(10, 10, 100, 100);

  ctx.beginPath();
  ctx.arc(200, 200, 20, 0, 2*Math.PI);
  ctx.strokeStyle = 'blue';
  ctx.lineWidth = 3;
  ctx.stroke();
  ctx.fillStyle = 'purple';
  ctx.fill(); 
});
