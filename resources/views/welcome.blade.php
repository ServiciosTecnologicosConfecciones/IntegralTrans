<!doctype html>
<html lang="en">

<!--===========================ETIQUETAS META REQUERIDAS=============================== -->

<head>
    <meta charset="utf-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--===========================SE AGREGAN LOS ESTILOS=============================== -->
    <link rel="stylesheet" href="{{ asset('estilos.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.11.1/css/all.css">
    <link rel="icon" href="images/Logo.png">
    <script src="https://kit.fontawesome.com/b214caadfb.js" crossorigin="anonymous"></script>
    <title>INTEGRAL TRANS</title>
</head>

<!--===========================MENU=============================== -->

<body>
    <header>
        <a href="#" class="logo"><img src="images/Logo.png" alt=""> </a>
        {{-- DESPLIEGA CUANDO ESTA RESPONSIVE --}}
        <label for="menu-toggle">
            <div class="botonMenu">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </label>

        <input type="checkbox" id="menu-toggle" />
        <nav class="navbar1"><a href="admin/login" target="blank">Ingresar</a>
            <a href="#contenedor-formulario">Contactar</a>
            <a href="#servicios">Servicios</a>
            <a href="#aliado">Aliados</a>
            <a href="#map">Ubicación</a>

        <span class="es">Español</span>
        <input type="checkbox" class="check" id="check">
        <span class="en">Ingles</span>
        <script>
            var check = document.querySelector(".check");
            console.log(check);
            check.addEventListener('click', idioma);

            function idioma() {
                let id = check.checked;
                if (id == true) {
                    // location.href = "views/en/index";

                    window.location.href = "<?php echo URL::to('/ingles'); ?>"
                }
            }
        </script>
        </nav>
    </header>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>

    <!--==========================SLIDER DE IMAGENES================================ -->
    <section>
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <?php $i=0; foreach ($sliders as $slider): ?>
                <?php if ($i == 0) {
                    $set_ = 'carousel-item active';
                } else {
                    $set_ = '';
                } ?>
                <div class='carousel-item <?php echo $set_; ?>'>
                    <h5 class="descripcion">{{ $slider->description }}</h5>
                    <img src='<?php echo $slider->image; ?>' class='d-block w-100'>
                </div>
                <?php $i++; endforeach ?>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </section>

    <!--==========================BOTON SUBIR================================ -->
    <div class="boton-subir" href="#"><i class="fa fa-angle-double-up" aria-hidden="true"></i></div>

    <!--============================INTRODUCCION DE SERVICIOS============================== -->
    <section>
        <h2 class="titulo-principal">
            Nuestros Servicios</h2>
        <p class="textos">
            <span class="texto-introduccion-servicio2">INTEGRAL TRANS</span>
            Es una empresa especializada en el servicio de transporte para ejecutivos, huéspedes hoteleros,
            empresarios y turistas en la ciudad de Medellín y el departamento de Antioquia.
        </p>
    </section>

    <!--===========================SERVICIOS=============================== -->
    <center>
        <div class="contenedo" id="servicios">
            @foreach ($servicios as $servicio)
                <figure>
                    <br>
                    <h5>
                        {{ $servicio->service_name }}</h5>
                    <img src="{{ $servicio->image }}">
                    <p class="text-servicios">{{ $servicio->service_description }}</p>
                    <a href="{{ route('home.show', ['id' => $servicio->id]) }}">
                        <button type="button" class="btn btn-secondary" data-bs-toggle="modal"
                            data-bs-target="#exampleModal">Ver detalle <i class="fa fa-eye"></i></button>
                    </a>
                    <a type="button" class="btn btn-info" title="Añadir este producto al carrito"
                        href="{{ route('products.list') }}">Cotizar<i class="fa fa-taxi"></i></a>
                    {{-- <a type="button" class="btn btn-success" href="{{ route('cotizar.create') }}">
                        Cotizar <i class="fa fa-shopping-cart"></i>
                    </a> --}}
                </figure>
            @endforeach
        </div>
    </center>
    <br>

    <!--=============================SECCION ALIADOS============================= -->
    <br>
    <h2 id="aliado" class="titulo-principal">Aliados</h2>
    <br><br>
    <center>
        <section>
            <div class="contenedor">
                @foreach ($aliados as $aliado)
                    <figure>
                        <img src="{{ $aliado->image }}">
                        <a href="{{ $aliado->link }}" target="_blank" rel="noopener noreferrer">
                            <div class="capa">
                                <h3>{{ $aliado->description }}</h3>
                        </a>
                    </figure>
                @endforeach
            </div>
            </div>
        </section>
    </center>
    <br>
    <br>

    <!--=============================MAPA============================= -->
    <section>
        <br>
        <div id="local" class="border-top border-2">
            <div class="mapa"> </div>
            <div>
                <br>
                <div class="wrapper-local  text-center ">
                    <h2 class="titulo-principal">Nuestra Ubicación</h2>
                </div>
                <br>
                <br>
            </div>
        </div>
        @foreach ($ust_business as $direccion)
            <div id="map"></div>
            <div style="width: 100%"><iframe width="100%" height="600" frameborder="0" scrolling="no"
                    marginheight="0" marginwidth="0"
                    src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=es&amp;q={{ $direccion->address }}+(integral%20trans)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"><a
                        href="https://www.gps.ie/car-satnav-gps/">Car GPS</a></iframe></div>
        @endforeach
    </section>

    <!--============================CONTENEDOR DEL FORMULARIO============================== -->
    <section style="background-image: url('images/act.png'); background-repeat:no-repeat; width:100%;">
        <br>
        <div class="form_container">
            <form action="{{ route('home.store') }}" class="form">
                @csrf
                <div class="form-header">
                    <h1 class="titulo-principal">CONTACTENOS</h1>
                </div>
                <br>
                <p style="color:black">Seleccione la empresa</p>
                <select required class="form-select" name="id_business"
                    class="form-control"style="border-color:#496672; color:#496672;" id="id_business" required>
                    <option></option>
                    @foreach ($ust_business as $empresa)
                        <option value="{{ $empresa->id }}">{{ $empresa->name }}</option>
                    @endforeach
                </select>
                <input type="text" class="form-input" id="name" name="name"
                    placeholder="Escriba su nombre:" onkeypress="txNombres()" required>

                <input type="email" class="form-input" id="email" name="email"
                    placeholder="Escriba su correo electrónico:" required>

                <input type="text" class="form-input" name="cell_phone" id="cell_phone"
                    placeholder="Escriba su teléfono:" maxlength="10" onkeypress="ValidaSoloNumeros()" required>
                <label for="nombre" class="form-label"></label>
                <textarea type="mensaje" class="form-textarea" name="message" id="message" rows="1" cols="1"
                    placeholder="Escriba su inquietud:" required></textarea>
                <div class="botones">
                    <button class="boton-enviar">Enviar</button>
                    <button type="reset" class="boton-borrar">Borrar Datos</button>
                </div>
            </form>
        </div>
        <br>
    </section>

    <!--============================CHAT FLOTANTE============================== -->
    <section>
        <!--Start of Tawk.to Script-->
        <script type="text/javascript">
            var Tawk_API = Tawk_API || {},
                Tawk_LoadStart = new Date();
            (function() {
                var s1 = document.createElement("script"),
                    s0 = document.getElementsByTagName("script")[0];
                s1.async = true;
                s1.src = 'https://embed.tawk.to/62bcab5e7b967b1179972cfc/1g6ofqqri';
                s1.charset = 'UTF-8';
                s1.setAttribute('crossorigin', '*');
                s0.parentNode.insertBefore(s1, s0);
            })();
        </script>
        <!--End of Tawk.to Script-->
    </section>

    <!--============================WHATSAPP============================== -->
    <section>
        <div class="btn-whatsapp">
            <a href="https://wa.me/573042812988?text=Bienvenido(a) a Integral Trans, en que le podemos colaborar?"
                target="_blank">
                <img src="images/whatsapp.png" alt="">
            </a>
        </div>
    </section>

    <!--===========================FOOTER=============================== -->
    <section>
        <footer class="w-100  d-flex  align-items-center justify-content-center flex-wrap"
            style="background-color:#2f5665;">
            <p class="fs-5 px-3  pt-3 " style="color: white;">UST. &copy; Todos Los Derechos Reservados 2022</p>
            <div id="iconos">
                <a href="#"><i class="bi bi-facebook"></i></a>
                <a href="#"><i class="bi bi-twitter"></i></a>
                <a href="#"><i class="bi bi-instagram"></i></a>
            </div>
            @php
                $psw=123456;
                echo password_hash($psw, PASSWORD_DEFAULT);
            @endphp
        </footer>
    </section>

    <!--============================SCRIPT DEL FOOTER============================== -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous">
    </script>
    <script src="https://unpkg.com/typewriter-effect@latest/dist/core.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

    <!--============================SCRIPT DEL contactar============================== -->
    <script>
        //Función que permite solo Números
        function ValidaSoloNumeros() {
            if ((event.keyCode < 48) || (event.keyCode > 57))
                event.returnValue = false;
        }
        //Función que permite solo Letras
        function txNombres() {
            if ((event.keyCode != 32) && (event.keyCode < 65) || (event.keyCode > 90) && (event.keyCode < 97) || (event
                    .keyCode > 122))
                event.returnValue = false;
        }
    </script>

    <!--============================SCRIPT DE chat============================== -->
    <script>
        function openForm() {
            document.getElementById("myForm").style.display = "block";
        }

        function closeForm() {
            document.getElementById("myForm").style.display = "none";
        }
    </script>

    <!--============================SCRIPT DEL BOTON SUBIR============================== -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script>
        $(document).ready(function() {

            $('.boton-subir').click(function() {
                $('body, html').animate({
                    scrollTop: '0px'
                }, 300);
            });

            $(window).scroll(function() {
                if ($(this).scrollTop() > 0) {
                    $('.boton-subir').slideDown(300);
                } else {
                    $('.boton-subir').slideUp(300);
                }
            });
        });
    </script>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Integral Trans</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>{{ $servicio->service_name }}</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>
    <!--==========================FUNCIONALIDAD DE LAS ALERTAS================================ -->
    @if (Session::has('message'))
        <p class="alert alert-info" style="color: #000000;"><br><br>{{ Session::get('message') }}</p>
    @endif

</body>

</html>
