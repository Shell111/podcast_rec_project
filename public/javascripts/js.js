console.log("hello")

let like_click = document.querySelector('button#heart')
like_click.addEventListener('click', background_change) 

function background_change(){
  event.target.style.backgroundColor = 'green';
  event.target.style.fontSize = '80px';
}

console.log("hello")