let body = document.querySelector('body');
body.addEventListener('click',giveAlert)

function giveAlert(){
    alert('WHIIIIIIITE');
}

function backcolor(){
    color = 'white';
    document.body.style.background = color;
}

body.addEventListener("click",backcolor);