@extends('layouts.frontend')

@section('content')
    @php
    // SDK de Mercado Pago
    require base_path('vendor/autoload.php');
    // Agrega credenciales
    MercadoPago\SDK::setAccessToken(config('services.mercadopago.token'));

    // Crea un objeto de preferencia

    $preference = new MercadoPago\Preference();
    // Crea un ítem en la preferencia
    // $total = $_GET['lprice'];
    $item = new MercadoPago\Item();
    $item->title = 'prueba';
    $item->quantity = 1;
    $item->currency_id = 'COP';
    //EL VALOR TOTAL SE LE PONE AL unit_price
    $item->unit_price = 20000;
    $preference->items = [$item];
    $preference->save();
    @endphp

    <style>
        * {
            padding: 3px;
        }
    </style>
    <div class="container">


        <form id="myform">

            <br>
        </form>

        <div id="p">
            <strong>
                Para poder solicitar un servicio por favor registrate o inicia sesión en el sistema
            </strong>
        </div>

        <div class="container px-6 mx-auto">
            <h3 class="text-2xl font-medium text-gray-700">Product List</h3>
            <!-- <div class="row col-md-5">
                        <abbr title="Ingrese la cantidad de personas"><i class="fas fa-users"></i></abbr>
                        <input name="personas" class="form-control" type="number" min="1" max="30" value="1">
                    </div> -->

            <form action="{{ route('cart.store') }}" method="POST" enctype="multipart/form-data">
                <div class="row col-md-5">
                    <abbr title="Seleccione el tipo de vehículo que desea"><i class="fas fa-car"
                            style="font-size: 25px;"></i></abbr>

                    <select class="form-select" name="" id="" onfocus='this.size=4;' onblur='this.size=1;'
                        onchange='this.size=1; this.blur();'>
                        <option value="0" selected disabled> Seleccione </option>
                        @foreach ($vehicle as $vehi)
                            <option value="{{ $vehi['id'] }}">{{ $vehi['vehicle_name'] }} -
                                <a>{{ $vehi['helper'] }}</a>
                                </p>
                            </option>
                        @endforeach
                    </select>

                </div>
                <div class="row col-md-5" id="Idayvuelta">
                    <a type="button"><i id="boton" onclick="cambiar()" class="fas fa-angle-right"></i>
                        <label id="vuelta" class="label-danger" onclick="cambiar()"><strong>Solo ida</strong></label></a>

                </div>
                <div class="row col-md-5">
                    <label><strong>Tipo de servicio</strong></label><br>
                    <select class="form-select" id="campo3" name="tipos" class="inicio" onfocus='this.size=4;'
                        onblur='this.size=1;' onchange='this.size=1; this.blur();'>
                        <option value="0" disabled selected>Seleccione</option>
                        @foreach ($tiposervicio as $tipo)
                            <option value="{{ $tipo['id'] }}"> {{ $tipo['service_name'] }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="row col-md-5">
                    <label><strong>Punto de salida</strong></label><br>
                    <select size="1" class="form-select" name="location" id="campo1" name="campo1"
                        onfocus='this.size=4;' onblur='this.size=1;' onchange='this.size=1; this.blur();'>
                        <option value="0" id="select" disabled selected>Seleccione</option>
                        @forelse ($location as $loc => $value)
                            <option value="{{ $loc }}">{{ $value }}</option>
                        @empty
                            No hay datos
                        @endforelse
                    </select>
                </div>

                <div class="row col-md-5" id="destino" style="display: block;">
                    <label><strong>Punto de llegada</strong></label><br>

                    <select class="form-select" id="campo2" name="destination" disabled onfocus='this.size=4;'
                        onblur='this.size=1;' onchange='this.size=1; this.blur();'>
                        <option value="0" disabled selected>Seleccione</option>
                    </select>

                </div>
                <div id="salida" class="row col-md-5" inline="true">
                    <label><strong> Fecha y hora de salida</strong></label>
                    <input placeholder="Seleccione una fecha" type="datetime-local" id="datepicker" class="form-control" />
                </div>

                <div id="regreso" class="row col-md-5" inline="true" style="display: none;">
                    <label><strong> Fecha y hora de regreso</strong></label>
                    <input placeholder="Seleccione una fecha" type="datetime-local" id="datepicker" class="form-control">
                </div>


                <div id="recogida" class="row col-md-5" style="display: block;">

                    <label><strong>Dirección de recogida</strong></label><br>
                    <input name="recogida" class="form-control" id="uno" type="text">

                    <label><strong>Dirección de destino</strong></label><br>
                    <input name="destino" id="dos" class="form-control" type="text">



                    </select>

                </div>

                <!-- <div id="cotizar" style="display: none;">
                            <div> -->

                <!-- @foreach ($vehicle as $vehiculo)
    <img src="">
    @endforeach -->
                <!-- BOTON DE COTIZAR -->
                <!-- <a href="#" type="button" class="px-4 py-2 text-white bg-blue-800 rounded"
                                    data-type="submit"><strong>Cotizar</strong></a>

                            </div>
                        </div>
                        <div class="row col-md-5">
                            <a type="button" class="btn btn-outline-secondary" onclick="history.back()"
                                name="volver atrás">Volver</a>
                        </div> -->
            </form>

            <div class="bg-white rounded-lg p-6 flex justify-between items-center">
                <div class="text-gray-700">
                    <p class="text-sm font-semibold">Total</p>
                    <select name="lprice" class="form-control" select disabled></select>
                    <button class='cho-container' id="t3"></button>
                </div>
            </div>



            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script src="{{ asset('js/main1.js') }}"></script>
            <script>
                $("#campo3").change(function() {
                    let servicio = $("#campo3").val();
                    alert(servicio);
                });
            </script>
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

            <script>
                jQuery('select[name="location"]').on('change', function() {
                    let pprice = jQuery(this).val();

                    jQuery(document).ready(function() {
                        jQuery('select[name="destination"]').on('change', function() {
                            let lprice = jQuery(this).val();
                            if (lprice) {
                                jQuery.ajax({
                                    url: 'dropdownlist/getPrice/' + lprice + '/Location/' + pprice,
                                    type: "GET",
                                    dataType: "json",
                                    success: function(data) {
                                        jQuery('select[name="lprice"]').empty();
                                        // $('select[name="lprice"').append(
                                        //     '<option value="0" selected disabled> 0 </option>'
                                        // );

                                        //HACER QUE EL VALOR DEL SELECT(total) SE PASE A PHP
                                        jQuery.each(data, function(val, loc) {
                                            $('select[name="lprice"]').append(
                                                '<option id="lprice" value="' +
                                                val + '">' +
                                                loc +
                                                '</option>');
                                        });
                                    }
                                });
                            } else {
                                $('select[name="lprice"]').empty();
                            }
                        });
                    });

                });
            </script>
            <input type="number" id="tte">

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
                                            '<option  value="' + loc + '">' + value +
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
                    let ida = document.getElementById("salida");
                    let vuelta = document.getElementById("regreso");


                    if (x.className === "fas fa-angle-right") {

                        document.getElementById("boton").className = "fas fa-retweet";
                        document.getElementById("vuelta").innerHTML = '<strong>Ida y vuelta</strong>';
                        destino.style.display = 'block';
                        vuelta.style.display = 'block';


                        // document.getElementById("destino").removeAttribute("style");

                    } else {
                        document.getElementById("boton").className = "fas fa-angle-right";
                        document.getElementById("vuelta").innerHTML = '<strong>Solo ida</strong>';
                        destino.style.display = 'block';
                        recogida.style.display = 'block';
                        vuelta.style.display = 'none';
                        document.getElementById("myform").reset();


                        //document.getElementById("destino").setAttribute("style","display:none;")


                    }
                }
            </script>
            <script src="https://sdk.mercadopago.com/js/v2"></script>
            {{-- <script src="https://www.mercadopago.com/v2/security.js" view="index"></script> --}}

            <script>
                // Agrega credenciales de SDK
                const mp = new MercadoPago("{{ config('services.mercadopago.key') }}", {
                    locale: "es-CO",
                });

                // Inicializa el checkout
                mp.checkout({
                    preference: {
                        id: '{{ $preference->id }}',
                    },
                    render: {
                        container: ".cho-container", // Indica el nombre de la clase donde se mostrará el botón de pago
                        label: "Pagar", // Cambia el texto del botón de pago (opcional)
                    },
                });
            </script>
            <?php
            $t = Session::get('admin_name');
            echo '<input value=' . $t . " id='t' style='display:none'>"; ?>

            <script>
                let boton_disable = document.getElementById('t');
                // let P = document.getElementById('p').style.display='none';
                document.getElementById('p').style.display = 'none';
                if (boton_disable == null) {
                    document.getElementById('p').style.display = 'block';

                    var boton = document.getElementById("t3").style.display = 'none';
                }
                /*----------------------------------*/
                jQuery('select[name="location"]').on('change', function() {
                    let pprice = jQuery(this).val();

                    jQuery(document).ready(function() {
                        jQuery('select[name="destination"]').on('change', function() {
                            let lprice = jQuery(this).val();
                            if (lprice) {
                                jQuery.ajax({
                                    url: 'dropdownlist/getPrice/' + lprice + '/Location/' + pprice,
                                    type: "GET",
                                    dataType: "json",
                                    success: function(data) {
                                        jQuery('select[name="lprice"]').empty();
                                        // $('select[name="lprice"').append(
                                        //     '<option value="0" selected disabled> 0 </option>'
                                        // );

                                        //HACER QUE EL VALOR DEL SELECT(total) SE PASE A PHP
                                        jQuery.each(data, function(val, loc) {
                                            $('select[name="lprice"]').append(
                                                '<option id="lprice" value="' +
                                                val + '">' +
                                                loc +
                                                '</option>');
                                                // console.log(document.getElementById('lprice').value);
                                                 console.log(loc);
                                        });
                                    }

                                });
                            } else {
                                $('select[name="lprice"]').empty();
                            }
                        });
                    });

                });

                // console.log(tte);
            </script>

        @endsection
