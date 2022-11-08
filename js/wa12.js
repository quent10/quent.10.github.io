

function check(){
    console.log('test');
}

function submit(){
    alert(output.textContent);
}

function reset(){
    const resetvalue = 0;
    output.textContent = outputInt;
}

function plusRunner(){
    plus(outputInt);
}

function plus(){
    if (outputInt < 9999999999){
    outputInt += 1;
    output.textContent = outputInt;
}
}
function minus(){
    if (outputInt > 0){
    outputInt -= 1;
    output.textContent = outputInt;}
}

function random(){
    output = randomNumber(0, 9999999999);
}

function randomNumber(min, max){
    const num = Math.floor(Math.random()*(max-min+1))+min;
    return num;
}

const output = document.querySelector('.output');
let outputInt = parseInt(output.textContent);
console.log(outputInt);

const minusButton = document.querySelector('.minus-Button').addEventListener('click',minus);
const plusButton = document.querySelector('.plus-Button').addEventListener('click',plusRunner);
const resetButton = document.querySelector('.reset-Button').addEventListener('click',reset);
const randomButton = document.querySelector('.random-Button').addEventListener('click',random);
const submitButton = document.querySelector('.submut-Button').addEventListener('click',submit);



/*const button = document.querySelector('.button');
const output = document.querySelector('.output');
let phone_content = document.querySelector('.phone');

button.addEventListener('click', updateOutput);

function updateOutput() {
    output.textContent = phone_content.value;
    alert(phone_content.value);
}
*/

var slider = document.getElementById("myRange");
var sliderSubmit =document.querySelector(".slider-submut-button").addEventListener('click', update);
var slideOutput = docuent.querySelector(".slider-output");


function update(){
    sliderOutput.textContent = 
}