const kwadrat_id = document.getElementById("kwadrat");
const prostokad_id = document.getElementById("prostokad")
const trojkad_id = document.getElementById("trojkad")
const kolo_id = document.getElementById("kolo")

function kwadrat_draw(){
  if(kwadrat_id.getContext){
    let ctx = kwadrat_id.getContext("2d")
    ctx.fillStyle = "rgba(233, 113, 92, 1)";
    ctx.fillRect(10, 10, 100, 100);
  }
}

function prostokad_draw(){
  if(prostokad_id.getContext){
    let ctx = prostokad_id.getContext("2d")
    ctx.fillStyle = "rgb(148, 209, 158)"
    ctx.fillRect(25, 10, 100,150)
  }
}

function trojkad__draw(){
  if(trojkad_id.getContext){
    let ctx = trojkad_id.getContext("2d")
    ctx.fillStyle = "rgba(127, 205, 211, 1)"

    ctx.beginPath()
    ctx.moveTo(40, 10)
    ctx.lineTo(400,10)
    ctx.lineTo(350,300)
    ctx.fill()
  }
}

function kolo_draw(){
  if(kolo_id.getContext){
    let ctx = kolo_id.getContext("2d")
    ctx.fillStyle = "rgba(170, 111, 224, 1)"
    let radius = 50
    let start_angle = 0
    let end_angle =  2 * Math.PI;
    ctx.arc(150,80,radius, start_angle,end_angle)
    ctx.fill();
  }
}

function draw_all(){
  kwadrat_draw()
  prostokad_draw()
  trojkad__draw()
  kolo_draw()
}