/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function AfficherLogin()
{
    console.log("Fonction AfficherLogin");
    window.document.forms["monForm"].loginBis.value = window.document.forms["monForm"].login.value;
    
    if(window.document.forms["monForm"].login.value === 'les pd'){
        window.document.forms["monForm"].loginBis.value = "on peut rien faire";
    }
}

function DemanderNom()
{
    nom= prompt("Quel est votre nom ?");
    
    if(nom === 'Mathis' || nom==='Antonin'){
        alert("Toi t'es cool");
    }else{
      alert("Salut " + nom + " !");  
    }
}