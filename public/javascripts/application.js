let like_click = document.getElementsByClassName('like')
like_click.addEventListener('click', background_change) 


function background_change(){
  event.target.style.backgroundColor = 'red'
}