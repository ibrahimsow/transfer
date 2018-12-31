// Upload page

var Logger = {

  log : function(message) {
    console.log(dateFormat(new Date(), "ddd mmm dd yyyy HH:MM:ss") + " : " + message);
  }

}

var $http = {

  get : function(url) {

    Logger.log("$http : get");

    return new Promise(function(resolve, reject) {

      Logger.log("$http : Promise");

      var xhr = new XMLHttpRequest();
  
      xhr.open('GET', url);
      xhr.setRequestHeader('Content-Type', 'application/json');
      xhr.onload = function() {
          
          Logger.log("$http : Ajax call finish");

          if (xhr.status === 200) {
            resolve(xhr.responseText);
          }
          else {
            reject(xhr);
          }
      };
  
      xhr.send();
    
    });
  }

}

if (document.getElementById('uploadPage')) {

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
}

// All files page

(function() {

  var AllFilesObject = {

    // Parse JSON and return html
    formatData : function(json) {

      Logger.log("AllFilesObject : formatData");

      var html = '<ul>';    

      for (var i = 0 ; i < json.length ; i++) {
        html = html + "<li><a target='_blank' href='download/pagedownload/" + json[i].uuid + "'>" + json[i].nom + "</a></li>";
      }

      html = html + '<ul>';

      return html;

    },

    updateContent : function(json) {

      Logger.log("AllFilesObject : updateContent");

      var self = this,
          divContent = document.getElementById('result');

      divContent.innerHTML = self.formatData(json);
    },

    getData : function() {

      Logger.log("AllFilesObject : getData");

      var self = AllFilesObject;

      $http.get('allfiles/test/'+document.getElementById('mail').value).then(function(value) {
        var json = JSON.parse(value);
        self.updateContent(json);
      
      }).catch(function( reason ) {
        console.log(reason);
      });

    },

    addAllEventListener : function() {

      Logger.log("AllFilesObject : addAllEventListener");

      var self = this;
      
      document.getElementById('btnSearch').addEventListener('click', self.getData);

    },
 
    init : function() {

      Logger.log("AllFilesObject : init");

      var self = this;

      self.addAllEventListener();

    }
  
  }
  
  if (document.getElementById('allFilesPage')) {

    var input = document.getElementById('mail');
  
    AllFilesObject.init();
  
  }


})();

