/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var imagenes = [null, null, null, null, null, null];
var locationUser = null;
/*Para agregar imagenes*/
$('#img6').click(function () {
    $('#file1').trigger('click');
    $('#file1').on({
        change: function (e) {
            var fr = new FileReader();

            fr.addEventListener("load", function (e) {
                if (e.target.result.substring(0, 10) == "data:image") {
                    document.getElementById('img6').src = e.target.result;
                    imagenes[5] = e.target.result;
                    updateImages();
                } else {
                    $('#myModal').modal('show')
                }
            });


            fr.readAsDataURL(this.files[0])
        }
    });
});

$('#img5').click(function () {
    $('#file2').trigger('click');
    $('#file2').on({
        change: function (e) {
            var fr = new FileReader();

            fr.addEventListener("load", function (e) {
                if (e.target.result.substring(0, 10) == "data:image") {
                    document.getElementById('img5').src = e.target.result;
                    imagenes[4] = e.target.result;
                    updateImages();
                } else {
                    $('#myModal').modal('show')
                }
            });


            fr.readAsDataURL(this.files[0])
        }
    });
});

$('#img4').click(function () {
    $('#file3').trigger('click');
    $('#file3').on({
        change: function (e) {
            var fr = new FileReader();

            fr.addEventListener("load", function (e) {
                if (e.target.result.substring(0, 10) == "data:image") {
                    document.getElementById('img4').src = e.target.result;
                    imagenes[3] = e.target.result;
                    updateImages();
                } else {
                    $('#myModal').modal('show')
                }
            });


            fr.readAsDataURL(this.files[0])
        }
    });
});

$('#img2').click(function () {
    $('#file4').trigger('click');
    $('#file4').change(function () {
        var fr = new FileReader();

        fr.addEventListener("load", function (e) {
            if (e.target.result.substring(0, 10) == "data:image") {
                document.getElementById('img2').src = e.target.result;
                imagenes[1] = e.target.result;
                updateImages();
            } else {
                $('#myModal').modal('show')
            }
        });


        fr.readAsDataURL(this.files[0])
    })
});

$('#img1').click(function () {
    $('#file5').trigger('click');
    $('#file5').on({
        change: function (e) {
            var fr = new FileReader();

            fr.addEventListener("load", function (e) {
                if (e.target.result.substring(0, 10) == "data:image") {
                    document.getElementById('img1').src = e.target.result;
                    imagenes[0] = e.target.result;
                    updateImages();
                } else {
                    $('#myModal').modal('show')
                }
            });


            fr.readAsDataURL(this.files[0])
        }
    });
});

$('#img3').click(function () {
    $('#file6').trigger('click');
    $('#file6').on({
        change: function (e) {
            var fr = new FileReader();
            fr.addEventListener("load", function (e) {
                if (e.target.result.substring(0, 10) == "data:image") {
                    document.getElementById('img3').src = e.target.result;
                    imagenes[2] = e.target.result;
                    updateImages();
                } else {
                    $('#myModal').modal('show')
                }

            });


            fr.readAsDataURL(this.files[0])
        }
    });
});

/*Quitar la imagen*/

$('#btn6').click(function () {
    document.getElementById('img6').src = "https://icon-library.net/images/add-image-icon-png/add-image-icon-png-15.jpg";
    imagenes[5] = null;
    updateImages();
});

$('#btn5').click(function () {
    document.getElementById('img5').src = "https://icon-library.net/images/add-image-icon-png/add-image-icon-png-15.jpg";
    imagenes[4] = null;
    updateImages();
});

$('#btn4').click(function () {
    document.getElementById('img4').src = "https://icon-library.net/images/add-image-icon-png/add-image-icon-png-15.jpg";
    imagenes[3] = null;
    updateImages();
});

$('#btn3').click(function () {
    document.getElementById('img3').src = "https://icon-library.net/images/add-image-icon-png/add-image-icon-png-15.jpg";
    imagenes[2] = null;
    updateImages();
});

$('#btn2').click(function () {
    document.getElementById('img2').src = "https://icon-library.net/images/add-image-icon-png/add-image-icon-png-15.jpg";
    imagenes[1] = null;
    updateImages();
});

$('#btn1').click(function () {
    document.getElementById('img1').src = "https://icon-library.net/images/add-image-icon-png/add-image-icon-png-15.jpg";
    imagenes[0] = null;
    updateImages();
});


function updateImages() {

    for (var i = 0; i < 6; i++) {
        if ((imagenes[0] || imagenes[1] || imagenes[2] || imagenes[3] || imagenes[4] || imagenes[5]) && locationUser.length > 0) {
            $('#publicar').removeClass('btn-secondary');
            $('#publicar').addClass('btn-primary');
            document.getElementById('publicar').removeAttribute('disabled');
            console.log(imagenes[0].name);
        } else {
            $('#publicar').removeClass('btn-primary');
            $('#publicar').addClass('btn-secondary');
            $('#publicar').attr('disabled', 'true');
        }
    }

}
/*Capturar la ubicacion del usuario*/

function showPosition() {
    var map = null
    var geocodeService = L.esri.Geocoding.geocodeService();
    map = L.map('map').fitWorld();
    L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);
    map.locate({setView: true, maxZoom: 16});
    function onLocationFound(e) {
        var radius = e.accuracy;
        console.log(e);
        geocodeService.reverse().latlng(e.latlng).run(function (error, result) {
            if (error) {
                return;
            }
            console.log(result);
            L.marker(result.latlng).addTo(map).bindPopup(result.address.City + "," + result.address.Region).openPopup();
            locationUser = result.address.City + "," + result.address.Region;
            updateImages();
        });

        L.circle(e.latlng, radius).addTo(map);
    }

    map.on('locationfound', onLocationFound);
}

/*Validando Datos para continuar (NEXT1)*/
var checkbox = document.getElementById('defaultCheck1');
var inputTitle = document.getElementById('colFormLabelLg');
function CheckAndInputTitle() {
    if (inputTitle.value.length > 0 && checkbox.checked) {
        $('#next1').removeClass('btn-secondary');
        $('#next1').addClass('btn-primary');
        document.getElementById('next1').removeAttribute('disabled');
    } else {
        $('#next1').removeClass('btn-primary');
        $('#next1').addClass('btn-secondary');
        $('#next1').attr('disabled', 'true');
    }
}

/*Validando datos para NEXT2*/
var desc = document.getElementById('desc');
var price = document.getElementById('price');

function DescAndPrice() {
    if (desc.value.length > 0 && price.value > 0) {
        $('#next2').removeClass('btn-secondary');
        $('#next2').addClass('btn-primary');
        document.getElementById('next2').removeAttribute('disabled');
    } else {
        $('#next2').removeClass('btn-primary');
        $('#next2').addClass('btn-secondary');
        $('#next2').attr('disabled', 'true');
    }
}

function addListener(dom, event, func) {
    dom.addEventListener(event, function () {
        func();
    });
}

addListener(price, 'keyup', DescAndPrice);
addListener(desc, 'keyup', DescAndPrice);
addListener(checkbox, 'change', CheckAndInputTitle);
addListener(inputTitle, 'keyup', CheckAndInputTitle);

/*Enviando informacion*/
//$('#publicar').click(function () {
//    fetch(`http://localhost:8080/VendeYa/test.jsp?fotos[]=${imagenes}`
//            ).then(function (res) {
//        return res.text();
//    }).then(function (data) {
//        location.href = `http://localhost:8080/VendeYa/test.jsp?fotos[]=a`;
//    });
//});

/*Capturando categoria*/
var idCategoria = null;
function getInfo(e) {
    var selectDom = document.getElementById("example" + e.id);
    selectDom.addEventListener('change', function () {
        idCategoria = selectDom.value;
        $('#next3').removeClass('btn-secondary');
        $('#next3').addClass('btn-primary');
        document.getElementById('next3').removeAttribute('disabled');
    });
}

/*Firebase*/
// Your web app's Firebase configuration
var firebaseConfig = {
    apiKey: "AIzaSyDpLLTRh8XhyciqCy0QJYyUUYnalQLzSV8",
    authDomain: "vendeya-a46cc.firebaseapp.com",
    databaseURL: "https://vendeya-a46cc.firebaseio.com",
    projectId: "vendeya-a46cc",
    storageBucket: "vendeya-a46cc.appspot.com",
    messagingSenderId: "693529839040",
    appId: "1:693529839040:web:8bb0c03ee6fd497994b425",
    measurementId: "G-X9L160JGL9"
};
// Initialize Firebase
firebase.initializeApp(firebaseConfig);



$('#publicar').click(function () {
    var storage = firebase.storage();
    ///carpeta raiz
    var storageRef = storage.ref('usuario/08/98/');
    ///Ciclo para ingresar las imagenes

    for (var i = 0; i < imagenes.length; i++) {
        ///verificamos si es null o no 
        if (imagenes[i]) {
            // Hijos adentro de la raiz
            var ref = storageRef.child((i + 1) + '.jpg');
            ref.putString(imagenes[i], 'data_url').then(function (snapshot) {
                console.log('Uploaded a data_url string! ' + i);
            });
            ref.getDownloadURL().then(function (url) {
                AgregarImagenes(url);
            }).catch(function (error) {
            });
        } else {
            console.log("imagen " + (i + 1) + " no ingresada");
        }
    }
    ///Api fetch

    ///EnviarDatos();

});

///variable para guardar urls de imagenes
var Urls = [];
///Funcion para agragar las urls a nuestro array
function AgregarImagenes(url) {
    Urls.push(url);
    console.log(Urls[0]);
}

function EnviarDatos() {
    var Titulo = document.getElementById("colFormLabelLg").value;
    fetch("http://localhost:38258/VendeYa/PublicarArticulo?titulo=" + Titulo + "&precio=" + price.value + "&descripcion=" +
            desc.value + "&idsubcategoria=" + idCategoria + "&location=" + locationUser + "&fotos[]=" + Urls[0] +
            "&fotos[]=" + Urls[1] + "&fotos[]=" + Urls[2] + "&fotos[]=" + Urls[3] + "&fotos[]=" + Urls[4] + "&fotos[]=" + Urls[5]).then(function (res) {
        return res.text();
    }).then(function (data) {
        /*if (data == "true") {
         location.href = "http://localhost:38258/VendeYa";
         } else {
         document.getElementById("mensaje").innerHTML = "Datos incorrectos o no se encontro la cuenta";
         }*/
        location.href = "http://localhost:38258/VendeYa/PublicarArticulo?titulo=" + Titulo + "&precio=" + price.value + "&descripcion=" +
                desc.value + "&idsubcategoria=" + idCategoria + "&location=" + locationUser + "&fotos[]=" + Urls[0] +
                "&fotos[]=" + Urls[1] + "&fotos[]=" + Urls[2] + "&fotos[]=" + Urls[3] + "&fotos[]=" + Urls[4] + "&fotos[]=" + Urls[5];
    });
}




