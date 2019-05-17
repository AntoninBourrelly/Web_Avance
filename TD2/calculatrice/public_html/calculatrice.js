/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function ajouterValeur()
{
    
    valTouche = $(this).val();
    valTouchePrec = $("#ecran").val();
    
    if(valTouche !== '=')
    {
        $("#ecran").val(valTouchePrec + valTouche);
    } else{
        $("#ecran").val(eval($("#ecran").val()));
    }
            
    
}

function ajouterPi()
{
    valTouche = 3.14;
    valTouchePrec = $("#ecran").val();
    
    $("#ecran").val(valTouchePrec + valTouche);
    
}


$(document).ready(function()
{
    var val = 0;
    
    $(".num").click(ajouterValeur);
    $(".par").click(ajouterValeur);
    $(".pi").click(ajouterPi);
    
});