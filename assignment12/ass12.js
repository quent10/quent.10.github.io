var timerVar = setInterval(Timer, 1000);
var totalSeconds = 0000000000;
function Timer() {
           ++totalSeconds;
           var seconds = totalSeconds;
           if(seconds < 10)
             seconds = "0"+seconds;
           output.textContent = seconds;
        }

const output = document.querySelector('.output');
let outputInt = parseInt(output.textContent);
console.log(outputInt);

function update(){
          timerOutput.textContent = timer.value
        }

 function reset() {
          outputInt = 0;
          output.textContent = outputInt;
          totalSeconds = 0;
        }
function submit() {
          alert(output.textContent);
        }







        /* Click and buttons*/
        const resetButton = document.querySelector('.reset-button').addEventListener('click', reset);
        const submitButton = document.querySelector('.submit-button').addEventListener('click', submit);