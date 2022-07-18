<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cotizar</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
        integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('css/estilos.css') }}">
</head>
{{-- <style>
    /* Pen-specific styles */
    * {
        box-sizing: border-box;
    }

    body {
        font-size: 1.25rem;
        font-family: sans-serif;
        line-height: 200%;
        text-shadow: 0 2px 2px #6d6666;
    }

    section {
        color: rgb(0, 0, 0);
        text-align: center;
    }



    div {
        height: 100%;
    }

    article {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 100%;
        padding: 20px;
    }

    h1 {
        font-size: 1.75rem;
        margin: 0 0 0.75rem 0;
    }

    /* Pattern styles */
    .container {
        display: table;
        width: 100%;
    }

    .left-half {

        position: absolute;
        left: 0px;
        width: 50%;
    }

    .right-half {
        background-color: #747474;
        position: absolute;
        right: 0px;
        width: 50%;
    }

</style> --}}

<body>
    <div id="particles-js">

        <div class="container">
            <div class="left-half">

                <form id="bookingForm">
                    <div class="row col-md-5">
                        <input name="personas" type="number" min="1" max="15" value="1">
                        <span><i class="fas fa-users"></i></span>
                    </div>
                    <div class="row col-md-5">
                        <select name="" id="">
                            <option value="0" selected disabled> Seleccione </option>
                            @foreach ($vehicle as $vehi)
                                <option value="{{ $vehi->id }}">{{ $vehi->trademark }} || Pasajeros: <p>
                                        {{ $vehi->passenger_capacity }}</p>
                                </option>
                            @endforeach
                        </select>
                        <span><i class="fas fa-car" style="font-size: 25px;"></i></span>
                    </div>
                    {{-- <div class="row col-md-5">
                    <input name="From" min="1" max="15" type="number">
                    <span><i class="fas fa-suitcase"></i></span>
                </div> --}}
                    <div class="row col-md-5" id="Idayvuelta">
                        <a type="button"><i id="boton" onclick="cambiar()" class="fas fa-angle-right"></i></a>
                        <label id="vuelta" onclick="cambiar()"><strong>Solo ida</strong></label>
                    </div>
                    <div class="row col-md-5">
                        <label><strong>Tipo de servicio</strong></label><br>
                        <select id="campo3" name="tipos" class="inicio">
                            <option value="0" disabled selected>Seleccione</option>
                            @foreach ($tiposervicio as $tipo)
                                <option value="{{ $tipo['id'] }}"> {{ $tipo['service_name'] }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="row col-md-5">
                        <label><strong>Punto de salida</strong></label><br>
                        <select name="location" id="campo1" name="campo1">
                            <option value="0" id="select" disabled selected>Seleccione</option>
                            @forelse ($location as $loc => $value)
                                <option value="{{ $loc }}">{{ $value }}</option>
                            @empty
                                No hay datos
                            @endforelse
                        </select>
                    </div>

                    <div class="row col-md-5" id="destino" style="display: none;">
                        <label><strong>Punto de llegada</strong></label><br>

                        <select id="campo2" name="destination" disabled>
                            <option value="0" disabled selected>Seleccione</option>
                        </select>
                    </div>
                    <div id="recogida" class="row col-md-5" style="display: none;">
                        <label><strong>Dirección de recogida</strong></label><br>
                        <input name="recogida" id="uno" class="input-group-append" type="text">

                        <div class="row col-md-5">
                            <label><strong>Dirección de destino</strong></label><br>
                            <input name="destino" id="dos" class="input-group-append" minlength="5" maxlength="25"
                                type="text">
                        </div>
                    </div>
                    <div id="cotizar" style="display: none;">
                        <div>
                            @foreach ($vehicle as $vehiculo)
                                <img src="{{ $vehiculo->image }}">
                            @endforeach

                            <a href="#" type="button" class="btn btn-twitter"
                                data-type="submit"><strong>Cotizar</strong></a>
                        </div>
                    </div>
                    <br>
                    <div class="row col-md-5">
                        <a type="button" class="btn btn-flickr" onclick="history.back()" name="volver atrás">Volver</a>
                    </div>

                    <!---->
                </form>
            </div>
            <div class="right-half">

                <br>
                <!-- <link rel="stylesheet" href="{{ asset('css/style.css') }}">-->

                <!--  <span class="close">&times;</span>-->

                <p><strong>Servicios adicionales</strong></p>

                <form class="action">
                    <select id="input" class="form-control">
                        @forelse ($adicionales as $adicional)
                            <option value="{{ $adicional['additional_service_name'] }}">
                                {{ $adicional['additional_service_name'] }}<p class="price">
                                    ${{ $adicional['price'] }}</p>
                            </option>

                        @empty
                        @endforelse

                    </select>

                    <button class="btn-add">+</button>
                </form>
                <div class="li-container col-md-5">
                    <ul>

                    </ul>
                    <div class="empty col-md-5">
                        <p>No tienes servicio adicionales.</p>
                    </div>
                </div>

            </div>
        </div>
    </div>

</body>

</html>
<script src="{{ asset('js/particles.min.js') }}"></script>
<script src="{{ asset('js/app.js') }}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="{{ asset('js/main1.js') }}"></script>
<script>
    let cotizar = document.getElementById("vuelta");
    $('#campo1').change(function() {
        $('#campo2').removeAttr('disabled');
    });

    $('#campo2').change(function() {
        $('#recogida').removeAttr('style');
    });
    $('#dos').change(function() {
        $('#cotizar').removeAttr('style');
    });
</script>
<script text="text/javascript">
    jQuery(document).ready(function() {

        jQuery('select[name="location"]').on('change', function() {

            let id_place = jQuery(this).val();
            //alert(id_place);

            if (id_place) {
                jQuery.ajax({
                    url: 'dropdownlist/getDestination/' + id_place,
                    type: "GET",
                    dataType: "json",
                    success: function(data) {

                        jQuery('select[name="destination"]').empty();
                        $('select[name="destination"]').append(
                            '<option value="0" selected disabled> Seleccione </option>');
                        jQuery.each(data, function(loc, value) {

                            $('select[name="destination"]').append(
                                '<option value="' + loc + '">' + value +
                                '</option>');

                        });
                    }
                });

            } else {
                $('select[name="destination"]').empty();
            }
        });




    });
</script>


<script>
    function myFunction() {
        let x = document.getElementById("destino");
        let y = document.getElementById("vuelta");
        let recogida = document.getElementById("recogida");

    }

    function cambiar() {

        let x = document.getElementById("boton");
        let destino = document.getElementById("destino");

        if (x.className === "fas fa-angle-right") {

            document.getElementById("boton").className = "fas fa-retweet";
            document.getElementById("vuelta").innerHTML = '<strong>Ida y vuelta</strong>';
            destino.style.display ='block';


            // document.getElementById("destino").removeAttribute("style");

        } else {
            document.getElementById("boton").className = "fas fa-angle-right";
            document.getElementById("vuelta").innerHTML = '<strong>Solo ida</strong>';
            destino.style.display ='none';
            recogida.style.display='none';
            //document.getElementById("destino").setAttribute("style","display:none;")


        }
    }
</script>
