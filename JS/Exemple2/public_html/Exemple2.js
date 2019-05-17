/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function()
{
   $("#duTexte").click(changeCouleur);
   $(":button").mouseover(afficheValeur);
});

function changeCouleur()
{
    $(this).css("background-color", "red");
    $("form").append("<input type=\"button\" value=\"3\"/>");
}

function afficheValeur()
{
    var valButton = $(this).val();
    $("#duTexte").css("background-color", "white");
    $("#duTexte").css("color", "red");
    $("#duTexte").text(valBouton);
}
