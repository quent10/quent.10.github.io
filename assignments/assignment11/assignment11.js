document.addEventListener('onload',getQuote)

const quoteButton = document.querySelector('.new-quote');
quoteButton.addEventListener('click',getQuote)

const endpoint = 'https://api.spacexdata.com/v5/launches/latest';

async function getQuote(){
    console.log('test click worked');
    let text = await fetch(endpoint)
    let response = await text.text();


    let json_response = JSON.parse(response);
    console.log(response);
    console.log(json_response["rocket"]);
    //.then( text=> text.text);
    // .then (y => myDisplay(y));
    //console.log(text['message']);
    displayQuote(json_response["rocket"]);
}

function displayQuote(x){
    //const quoteBox = document.querySelector('#js-quote-text');
    //console.log('displau quote working');
   //const textMessage = document.createTextNode(x);

    //quoteBox.appendChild(textMessage);

    document.getElementById('js-quote-text').textContent = x;
}
getQuote();