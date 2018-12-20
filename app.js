// uploader
var input = document.getElementById( 'fichier' );
var infoArea = document.getElementById( 'listing' );

input.addEventListener( 'change', showFileName );

function showFileName( event ) {
  
  // the change event gives us the input it occurred in 
  var input = event.srcElement;
  for (let i=0; i<input.files.length; i++){
  // the input has an array of files in the `files` property, each one has a name that you can use. We're just using the name here.
  var fileName = input.files[i].name;
  
  // use fileName however fits your app best, i.e. add it into a div
  infoArea.innerHTML += "<p>" + fileName + "</p>";
  }
}
