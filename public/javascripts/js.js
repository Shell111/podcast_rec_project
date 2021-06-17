console.log("hello")

let like_click = document.querySelectorAll('#heart')
like_click.addEventListener('click', background_change) 

function background_change(){
  event.target.style.backgroundColor = 'green';
}

console.log("hello")