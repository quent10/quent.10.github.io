let body = document.querySelector('body');
body.addEventListener('click',giveAlert)

function giveAlert(){
    alert('YELLOW');
}

function backcolor(){
    color = 'yellow';
    document.body.style.background = color;
}

body.addEventListener("click",backcolor);