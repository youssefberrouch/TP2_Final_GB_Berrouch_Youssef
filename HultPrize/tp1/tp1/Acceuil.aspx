<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaitre.Master" AutoEventWireup="true" CodeBehind="Acceuil.aspx.cs" Inherits="tp1.Acceuil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" style="text-align:center;border:1px solid black">
    <div class="container-fluid" style="text-align:center;">
       <h3>Programme du jour <span style="  font-style: italic;font-size:12px"><i class="glyphicon glyphicon-calendar"></i> oct 18, 2019 </span></h3>
    <input type="button" id="1" class="btn btn-light" onclick="afficher(1)"  onmouseover="color(this);" onmouseout="decolor(this);" value="10-12"/>
    <input type="button" id="2" class="btn btn-light" onclick="afficher(2)" onmouseover="color(this);" onmouseout="decolor(this);" value="12-14"/>
    <input type="button" id="3" class="btn btn-light" onclick="afficher(3)" onmouseover="color(this);" onmouseout="decolor(this);" value="14-16"/>
    <input type="button" id="4" class="btn btn-light" onclick="afficher(4)" onmouseover="color(this);" onmouseout="decolor(this);" value="judges"/>
        
    </div>
    <div class="container" id="affichage" onload="afficher(4)"></div>

    <div class="container" style="text-align:center;text-align:center;border:1px solid grey;color:darkgreen"" >
        <h2>Travel Info </h2>
       <h3 style="font-family:Apple Chancery, cursive">Choose your way to join us <br /> will be there</h3>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
             <div  class="row" style="margin-top:60px">
                 <div class="col-md-6">
                     <img src="image/location-icon-white-location-circle-512.png" style="max-width: 100%; height: auto; display: block;" />
                  </div>
                 <div class="col-md-6">
                   <span style="font-style:italic;font-size:20px;"> Km 3, route de Casa BP 658, Settat</span> 
                     <input type="button" class="btn btn-success" value="show location" onclick="map(1);"/>
                 </div>
             </div>
                
                <div style="margin-top: 60px" class="row">
                    <div class="col-md-6">
                        <img src="image/aeroplane.jpg" style="max-width: 100%; height: auto; display: block;" />
                    </div>
                    <div class="col-md-6">
                        <span style="font-style: italic; font-size: 20px;">Nearby AirPlane</span>
                        <input type="button" class="btn btn-success" value="show location" onclick="map(2);"/>
                    </div>
                </div> 
              

                
                <div style="margin-top: 60px" class="row">
                    <div class="col-md-6">
                        <img src="image/train.png" style="max-width: 100%; height: auto; display: block;" />
                    </div>
                    <div class="col-md-6">
                        <span style="font-style: italic; font-size: 20px;">Nearby train Station</span>
                        <input type="button" class="btn btn-success" value="show location" onclick="map(3);"/>
                    </div>
                </div>
               
        </div>
            <div class="col-md-8" id="affichageMap">
     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3344.8947654678072!2d-7.615818357264933!3d33.03290284303971!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda61aa94bd7afb1%3A0xb6fe2356df2fe92a!2sEcole+Nationale+de+Commerce+et+de+Gestion!5e0!3m2!1sfr!2sma!4v1547664713651" frameborder="0" style="border:0;height:370px; margin-top:30px;margin-left:15px;width:100%;"></iframe><script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>

            </div>
</div>
 </div>














    <script>

     
        function color(champ)
        {
            champ.style.backgroundColor = "green";
        }
        function decolor(champ)
        {
            champ.style.backgroundColor = "white";
    }
    function map(int)
    {
        if (int == 1)
        {
             var xhttp = new XMLHttpRequest();
               xhttp.onreadystatechange = function() {
                   if (this.readyState == 4 && this.status == 200)
                   {
                    document.getElementById("affichageMap").innerHTML =this.responseText;

                   }

               };
                xhttp.open("GET", "location.html", true);
                xhttp.send(); 
        }
        if (int == 2)
        {
             var xhttp = new XMLHttpRequest();
               xhttp.onreadystatechange = function() {
                   if (this.readyState == 4 && this.status == 200)
                   {
                    document.getElementById("affichageMap").innerHTML =this.responseText;

                   }

               };
                xhttp.open("GET", "Avion.html", true);
                xhttp.send(); 
        }
        if (int == 3)
        {
             var xhttp = new XMLHttpRequest();
               xhttp.onreadystatechange = function() {
                   if (this.readyState == 4 && this.status == 200)
                   {
                    document.getElementById("affichageMap").innerHTML =this.responseText;

                   }

               };
                xhttp.open("GET", "train.html", true);
                xhttp.send(); 
        }
    }

        function afficher(int)
        {
            if (int == 1)
            {
                 var xhttp = new XMLHttpRequest();
               xhttp.onreadystatechange = function() {
                   if (this.readyState == 4 && this.status == 200)
                   {
                    document.getElementById("affichage").innerHTML =this.responseText;

                   }

               };
                xhttp.open("GET", "presentIdeas.html", true);
                xhttp.send(); 
            }
             if (int == 2)
             {
                   var xhttp = new XMLHttpRequest();
                 xhttp.onreadystatechange = function ()
                 {
                     if (this.readyState == 4 && this.status == 200)
                     {
                   document.getElementById("affichage").innerHTML =this.responseText;
                     }
                };
                xhttp.open("GET", "lunch.html", true);
                xhttp.send(); 
             }
            
             if (int == 3)
            {
                   var xhttp = new XMLHttpRequest();
                 xhttp.onreadystatechange = function ()
                 {
                     if (this.readyState == 4 && this.status == 200)
                     {
                      document.getElementById("affichage").innerHTML =this.responseText;
                     }
                 };
                xhttp.open("GET", "choosing.html", true);
                xhttp.send();
            }
             if (int == 4)
            {
                var xhttp = new XMLHttpRequest();
                 xhttp.onreadystatechange = function ()
                 {
                     if (this.readyState == 4 && this.status == 200)
                     {
            document.getElementById("affichage").innerHTML =this.responseText;

                     }

                 };
                    xhttp.open("GET", "judges.html", true);
                    xhttp.send(); 
             }
        }
                       
        
    </script>
</asp:Content>
