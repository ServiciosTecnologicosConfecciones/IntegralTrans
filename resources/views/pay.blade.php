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
     $item->unit_price = $_GET['loc'];
     $preference->items = [$item];
     $preference->save();

$destination = $_GET['destinationName'];
$location = $_GET['location'];
$lprice = $_GET['loc'];
$tte = $_GET['tte'];
$vehicle_name=$_GET['vehicle_name'];
echo $service;
echo $destination;
echo "el tipo de vehiculo es :" . $vehicle_name;
echo '<br> el valor a pagar 1 es ' . $tte;
echo '<br>el valor a pagar 2 es ' . $lprice;
echo '<br>el valor a pagar es ' . $location;

@endphp


<div class='cho-container'></div>
<script src="https://sdk.mercadopago.com/js/v2"></script>
<script>
    //Agrega credenciales de SDK
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
