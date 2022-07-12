<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Probando</title>
</head>
<style>
    body {
        margin-block: 20%;
        text-align: justify;
    }
    div{
  padding: 10px;
    }

</style>

<body>
    <div class="container">
        <div class="row col-md-10">
            <h1>Ajax dropdown select</h1>

            <select name="location" class="select-location" id="id_location">
                <option selected disabled> Testing... </option>
                @forelse ($location as $location )
                <option value="{{$location['id']}}">{{$location['place_name']}}</option>
                @empty
                @endforelse

            </select>
        </div>
        <div class="row col-md-10">
            <select name="" id="" class="destination" >
                <option>Destination</option>
                @forelse ($fare as $fare)
                <option value="{{$fare['id_destination']}}">{{$fare['place_name']}}</option>
                @empty

                @endforelse
            </select>
        </div>
    </div>
</body>

</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

<script>
    $(function(){

        $('.select-location').on('change', onSelectProjectChange);

    });

    function onSelectProjectChange(){
        let id_location = $(this).val();
        alert(id_location);

        $.ajax({
               type:'get',
               url:'{!!URL::to('findDestinationName')!!}',
               data:{'id':id_location},
               success:function(data){
                   console.log('success');
                   console.log(data);
               },
               error:function(){

               }
           });

    }

</script>

