<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalEstructura._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
    <h1>Generador de Horarios Automaticos</h1>

    <p>
        <h3>Digite las asignaturas</h3>
        <input type="text" class="form-control" name="materia" id="materia" placeholder="Asignaciones" /><br />
        <input type="submit" class="btn btn-success" name="agregar" id="agregar" value="Enviar" onclick="" />
    </p>

</div>
<table class="table table-bordered">
    <thead>
        <tr>
            <th>Horas/Dias</th>
            <th>Lunes</th>
            <th>Martes</th>
            <th>Miercoles</th>
            <th>Jueves</th>
            <th>Viernes</th>
        </tr>
    </thead>
    <tbody>
        <tr id="tr1">
            <th scope="row">9:00am a 1:00pm</th>
            
        </tr>
        <tr id="tr2">
            <th scope="row">2:00pm a 6:00pm</th>

        </tr>
        <tr id="tr3">
            <th scope="row">6:00pm a 10:00pm</th>

        </tr>
    </tbody>
</table>

    <script>

        var asignaturas = new Array();
        

        $("#agregar").click(function (e) {
            event.preventDefault();
            console.log("entre")
            asignaturas.push($('#materia').val())

            if (asignaturas.length == 1) {
                $("#tr1").append(`<td>${asignaturas[0]}</td>`);
                
            }
            else if (asignaturas.length == 2) {
                $("#tr2").append(`<td>${asignaturas[1]}</td>`);
                
            }
            else if (asignaturas.length == 3) {
                $("#tr3").append(`<td>${asignaturas[2]}</td>`);
                
            }
            else if (asignaturas.length == 4) {
                $("#tr1").append(`<td>${asignaturas[3]}</td>`);

            }
            else if (asignaturas.length == 5) {
                $("#tr2").append(`<td>${asignaturas[4]}</td>`);

            }
            else if (asignaturas.length == 6) {
                $("#tr3").append(`<td>${asignaturas[5]}</td>`);

            }
            else if (asignaturas.length == 7) {
                $("#tr1").append(`<td>${asignaturas[6]}</td>`);

            }
            else if (asignaturas.length == 8) {
                $("#tr2").append(`<td>${asignaturas[7]}</td>`);

            }
            else if (asignaturas.length == 9) {
                $("#tr3").append(`<td>${asignaturas[8]}</td>`);

            }
            else if (asignaturas.length == 10) {
                $("#tr1").append(`<td>${asignaturas[9]}</td>`);

            }
            else if (asignaturas.length == 11) {
                $("#tr2").append(`<td>${asignaturas[10]}</td>`);

            }
            else if (asignaturas.length == 12) {
                $("#tr3").append(`<td>${asignaturas[11]}</td>`);

            }
            else if (asignaturas.length == 13) {
                $("#tr1").append(`<td>${asignaturas[12]}</td>`);

            }
            else if (asignaturas.length == 14) {
                $("#tr2").append(`<td>${asignaturas[13]}</td>`);

            }
            else if (asignaturas.length == 15) {
                $("#tr3").append(`<td>${asignaturas[14]}</td>`);

            }
            else if (asignaturas.length >= 16) {
                alert("No se pueden introducir mas asignaturas");
            }
            $("#materia").val("");
            $("#materia").focus();
        })
        

    </script>
    
    


</asp:Content>
