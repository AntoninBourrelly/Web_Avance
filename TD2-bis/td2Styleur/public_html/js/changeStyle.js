function changerCouleurBordure()
{
    var coul = $("#couleurBordure").val();
    $("#divTest").css("border-color", coul);
    
}
function changerLargeurBordure()
{
    var lar = $("#largeurBordure").val();
    var larpx = lar + "px";
    $("#divTest").css("border-width", larpx);
    
}

function changerStyleBordure()
{
    var style = $("#styleBordure").val();
    $("#divTest").css("border-style", style);
}

function changerOmbre()
{
    var hori = $("#ombreDecalH").val() + "px";
    var vert = $("#ombreDecalV").val() + "px";
    var dist = $("#ombreDistFlou").val() + "px";
    var tail = $("#ombreTaille").val() + "px";
    var coul = $("#ombreCouleur").val();

    $("#divTest").css('box-shadow', 'hori', 'vert', 'dist', 'coul');
    $("#divTest").css('padding', tail);

}

$(function () {


    /*  gestion bordure */
    $("#couleurBordure").change(changerCouleurBordure);

    $("#largeurBordure").change(changerLargeurBordure);

    $("#styleBordure").change(changerStyleBordure);

    /*  gestion ombre */

    $("#miseAJour").click(changerOmbre);

});
