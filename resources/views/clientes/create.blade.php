<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Registro</title>
    <link rel="stylesheet" href="{{ asset('estilos.css') }}">
</head>

<body>
    <br>
    <br>
    <br>
    <center>
        <form action="{{ route('home.guardarUser') }}" method="POST" id="registro" class="form"
            enctype="multipart/form-data">
            @csrf
            <h2 class="titulo-form">Registro</h2>
            <div class="contenedor-inputs">
                <input type="text" id="name" name="name" class="form-input-50" placeholder="Nombre:" required>
                <input type="text" name="lastname" class="form-input-50" placeholder="Apellido:" required>
                <select name="tipodocumento" id="" class="form-input-50">
                    <option>Seleccione tipo documento</option>
                    @foreach ($documento as $documento)
                        <option value="{{ $documento['id'] }}">{{ $documento['document_name'] }}</option>
                    @endforeach
                </select>
                <input type="text" name="documento" class="form-input-50" placeholder="N° de Documento:" required>
                <input type="number" name="cellphone" class="form-input-50" placeholder="Telefono:" required>
                <input type="address" name="address" class="form-input-50" placeholder="Dirección:" required>
                <input type="email" id="email" name="email" class="form-input-50" placeholder="E-mail:" required>
                <input type="password" name="password" id="password" class="form-input-50" placeholder="Contraseña:"
                    required>
                <input class="form-input-50" id="photo" type="file" name="foto" required />
                <br><br><br>
                <center>
                    <button type="submit" class="boton-registrar">Registrar</button>
                </center>
                <br>
                <p class="form-link">¿Ya tienes cuenta? <a href="/admin/login">Ingresa aqui</a></p>
            </div>
        </form>
    </center>
</body>
</html>
