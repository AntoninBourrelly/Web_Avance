/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function Multiplier(){
    var val1 = window.document.forms["multiplication"].num1.value;
    var val2 = window.document.forms["multiplication"].num2.value;
    window.document.forms["multiplication"].resultat.value = val1 * val2;
}

function Additionner(){
    var val1 = window.document.forms["addition"].num1.value;
    var val2 = window.document.forms["addition"].num2.value;
    window.document.forms["addition"].resultat.value = parseInt(val1) + parseInt(val2);
}