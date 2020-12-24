global.$ = require('jquery')

$(document).ready(function() {

  $(".upvote").click(function( event ) {

    var id = (this.dataset['id']);
    const data = {upvote: '+1'};


//POST request with body equal on data in JSON format
fetch('http://localhost:3000/votes/'+id+'.json', {
  method: 'put',
  headers: {
    'Content-Type': 'application/json',
  },
  body: JSON.stringify(data),
})
.then((response) => response.json())
//Then with the data from the response in JSON...
.then((data) => {
  console.log('Success:', data);
})
//Then with the error genereted...
.catch((error) => {
  console.error('Error:', error);
});

//																		Yeah
    });


  $(".downvote").click(function( event ) {

    var id = (this.dataset['id']);
    const data = {downvote: '-1'};


//POST request with body equal on data in JSON format
fetch('http://localhost:3000/votes/'+id+'.json', {
  method: 'put',
  headers: {
    'Content-Type': 'application/json',
  },
  body: JSON.stringify(data),
})
.then((response) => response.json())
//Then with the data from the response in JSON...
.then((data) => {
  console.log('Success:', data);
})
//Then with the error genereted...
.catch((error) => {
  console.error('Error:', error);
});

//																		Yeah
    });
});
