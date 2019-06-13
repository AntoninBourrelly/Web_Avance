


//Affichage de l'affectation depuis l'emplacement
		$(document).on("change", "#logo", function(){
			$("#mapid").attr("logo", $(this).val());
			setCookie("clogo", $(this).val());	
		}); 
		
    
    //Initialisation des Cookies
		$(document).ready(function(){
			
			$("#mapid").attr("logo", getCookie("clogo"));
			$("#logo").val(getCookie("clogo"));
			
		});
    
    
    
    
    //Initialiser un Cookie
		function setCookie(cname,cvalue) {
			
			 document.cookie = cname + "=" + cvalue + ";" ;
					
		}
		//Récupérer la valeur d'un Cookie
		function getCookie(cname) {
			  var name = cname + "=";
			  var decodedCookie = decodeURIComponent(document.cookie);
			  var ca = decodedCookie.split(';');
			  for(var i = 0; i < ca.length; i++) {
			    var c = ca[i];
			    while (c.charAt(0) == ' ') {
			      c = c.substring(1);
			    }
			    if (c.indexOf(name) == 0) {
			      return c.substring(name.length, c.length);
			    }
			  }
		   return "";
		}
