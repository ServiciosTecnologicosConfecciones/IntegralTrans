<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>


<div class="container">

    <table class="table">
        <thead>
          <tr>
            <th scope="col">Tipo de servicio</th>
            <th scope="col">Dirección de recogida</th>
            <th scope="col">Dirección de destino</th>
            <th scope="col">Número de pasajeros</th>
            <th scope="col">Fecha de solicitud</th>
            <th scope="col">Fecha de retorno</th>
            <th scope="col">Tipo de pago</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($users as $servicios)
          <tr>

              <th>{{$servicios->id_service_type  }}</th>
              <th>{{$servicios->pickup_address}}</th>
              <th>{{$servicios->destination_address }}</th>
              <th>{{$servicios->number_passengers}}</th>
              <th>{{$servicios->departure_date}}</th>
              <th>{{$servicios->return_date}}</th>
              <th>{{$servicios->payment_name }}</th>

            </tr>
            @endforeach

        </tbody>
      </table>
      <h6>cliente: {{$servicios->name}}</h6>
      <a href="{{ route('products.list') }}">Cotizar</a>
    </div>


</body>
</html>
