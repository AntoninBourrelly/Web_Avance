/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function changerFondOV()
{
    $(this).css('background-color','white');
}

function changerFondOU()
{
    $(this).css('background-color','beige');
}



$(document).ready(function ()
{
    
    $("th").mouseover(changerFondOV);
    $("th").mouseout(changerFondOU);
    
    
});