/* global fetch */

var btnIniciar = document.getElementById("Iniciar");
var usuario = document.getElementById("Usuario");
var pass = document.getElementById("Password");

btnIniciar.addEventListener("click", function (e) {
    e.preventDefault();
    
        fetch("http://localhost:38258/VendeYa/ValidarDatos?user="+usuario.value+"&pass="+pass.value+""
        ).then(function(res){
            return res.text();
        }).then(function(data){
              if(data == "true"){
                    location.href = "http://localhost:38258/VendeYa";
                }else{
                    document.getElementById("mensaje").innerHTML = "Datos incorrectos o no se encontro la cuenta";
                }
        });

});

//    function validar(ok){
//        if(ok){
//            location.href = "http://localhost:8080/VendeYa";
//        }else{
//            document.getElementById("mensaje").innerHTML = "Datos incorrectos";
//        }
//    }
