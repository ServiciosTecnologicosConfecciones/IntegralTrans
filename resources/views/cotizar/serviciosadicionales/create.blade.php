<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Servicios Adicionales</title>
    <link rel="stylesheet" href="{{asset('css/style.css')}}">
</head>
<body>
    <div class="container">
        <h1>Servicios Adicionales</h1>
        <div class="">
            <form>
              <select name="id" id="input" class="form-control">
                  @foreach ( $adicionales as $adicional)
                    <option value="{{ $adicional ['additional_service_name'] }}">{{$adicional['additional_service_name']}}</option>

                  @endforeach

              </select>

                <button class="btn-add">+</button>
            </form>
        </div>
        <div class="li-container">
            <ul>

            </ul>
        </div>
        <div class="empty">
            <p>No tienes servicio adicionales.</p>
        </div>
    </div>
    <script src="{{ asset('js/main1.js')}}"></script>
</body>
</html>
