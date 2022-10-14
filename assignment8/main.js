const customName = document.getElementById('customname');
const randomize = document.querySelector('.randomize');
const story = document.querySelector('.story');

function randomValueFromArray(array){
  const random = Math.floor(Math.random()*array.length);
  return array[random];
}

const storytext = "It was 94 fahrenheit outside, so :insertx: went for a walk. When they got to :inserty:, they stared in horror for a few moments, then :insertz:. Bob saw the whole thing, but was not surprised —:insertx: weighs 300 pounds, and it was a hot day.";
const insertx = ["Willy the Goblin","Big Daddy","Father Christmas"];
const inserty = ["the soup kitchen","Disneyland","the White House"];
const insertz = ["spontaneously combusted","melted into a puddle on the sidewalk","turned into a slug and crawled away"];
var newStory = storytext;

randomize.addEventListener('click', result);

function result() {

  if(customName.value !== '') {
    var name = customName.value;
    newStory=newStory.replace("Bob",name);

  }

  if(document.getElementById("uk").checked) {
    var weight = Math.round(300/14);
    var temperature =  Math.round(94-32*(5/9));
    newStory=newStory.replace("94 fahrenheit",temperature+" centigrade");
    newStory=newStory.replace("300 pounds",weight+" stone");

  }
  var xItem = randomValueFromArray(insertx);
  var yItem = randomValueFromArray(inserty);
  var zItem = randomValueFromArray(insertz);

  newStory=newStory.replace(":insertx:",xItem);
  newStory=newStory.replace(":inserty:",yItem);
  newStory=newStory.replace(":insertz:",zItem);

  story.textContent = newStory;
  story.style.visibility = 'visible';
}