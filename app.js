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


// transition sur la redirection de mon liens d'ancrage

(function() {
  var speed = 600;
  var moving_frequency = 15; // Affects performance !
  var links = document.querySelectorAll("a"); // Active links
  var href;
  for(var i=0; i<links.length; i++)
  {   
      href = (links[i].attributes.href === undefined) ? null : links[i].attributes.href.nodeValue.toString();
      if(href !== null && href.length > 1 && href.substr(0, 1) == '#')
      {
          links[i].onclick = function()
          {
              var element;
              var href = this.attributes.href.nodeValue.toString();
              if(element = document.getElementById(href.substr(1)))
              {
                  var hop_count = speed/moving_frequency
                  var getScrollTopDocumentAtBegin = getScrollTopDocument();
                  var gap = (getScrollTopElement(element) - getScrollTopDocumentAtBegin) / hop_count;
                  
                  for(var j = 1; j <= hop_count; j++)
                  {
                      (function()
                       {
                           var hop_top_position = gap*j;
                           setTimeout(function(){  window.scrollTo(0, hop_top_position + getScrollTopDocumentAtBegin); }, moving_frequency*j);
                       })();
                  }
              }
              
              return false;
          };
      }
  }
  
  var getScrollTopElement =  function (e)
  {
      var top = 0;
      
      while (e.offsetParent != undefined && e.offsetParent != null)
      {
          top += e.offsetTop + (e.clientTop != null ? e.clientTop : 0);
          e = e.offsetParent;
      }
      
      return top;
  };
  
  var getScrollTopDocument = function()
  {
      return document.documentElement.scrollTop + document.body.scrollTop;
  };
})();

