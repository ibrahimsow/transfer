let bandeAnnonces = document.querySelectorAll(".bande_annonce");
let showTrailler = document.querySelectorAll(".showBandeAnnonce");
let hideTrailler = document.querySelectorAll(".hideBandeAnnonce");
let film_image = document.querySelectorAll(".image");

console.log(bandeAnnonces);
// show trailler when i click on "voir la bande annonce" and hide when i click on "cacher la bande annonce"
for (let i = 0; i < showTrailler.length; i++) {

showTrailler[i].addEventListener("click", function(showTrail){
    bandeAnnonces[i].style.display = "block";
    showTrailler[i].style.display = "none";
    hideTrailler[i].style.display = "block";
    setTimeout(() => {
        bandeAnnonces[i].style.opacity= 1.0;
    }, 400)
  })
}

for (let j = 0; j < showTrailler.length; j++) {
  hideTrailler[j].addEventListener("click", function(hideTrail){
    bandeAnnonces[j].style.opacity= 0.0;
    setTimeout(() => {
        bandeAnnonces[j].style.display = "none";
        showTrailler[j].style.display = "block";
        hideTrailler[j].style.display = "none";
    }, 200)
   
  
  })
}


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
