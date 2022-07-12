<?php

namespace App\Http\Controllers;

//El modelo muestra, inserta, edita o borra datos de la base de datos
use App\Models\chat;
use App\Models\Usuario;
use App\Models\client;
use App\Models\contact;
use App\Models\business;
use App\Models\document;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;


class homeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        /*$ust_contact_us = contact::all(); return view('welcome');*/

        //Trae los datos de una tabla de la BD
        $aliados=DB::table('ust_allied')->get();
        $servicios=DB::table('ust_service_type')->get();
        $sliders=DB::table('ust_slider')->get();

        //Una variable almacena lo que hay en el modelo
        $ust_business =business::all();
        $ust_client =client::all();


        //Retorna a la vista welcome y muestra lo que se almacena en las variables
        return view('welcome',compact('ust_business','ust_client','aliados','servicios','sliders'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //El modelo inserta en la bd
        contact::create($request->all());

        //Y luego me retorna a la vista welcome
        return redirect()->route('home.index')->with('message', '¡Gracias por dejar tu inquietud!');
    }
    public function guardarChat(Request $request)
    {
        //El modelo inserta en la bd
        chat::create($request->all());

        //Y luego me retorna a la vista welcome
        return redirect()->route('home.index');
    }

    public function guardarUser(Request $request)
    {
        //Incriptar contraseña
        $request->request->add([
            'password'=> Hash::make($request->input('password')),
            'id_cms_privileges' => 2,
            'photo' => $request->file('foto')->store('uploads')
        ]);
        $cliente = new client();
        $cliente->id_document_type = $request->input('tipodocumento');
        $cliente->document_id = $request->input('documento');
        $cliente->name = $request->input('name');
        $cliente->last_name = $request->input('lastname');
        $cliente->email = $request->input('email');
        $cliente->cell_phone = $request->input('cellphone');
        $cliente->address = $request->input('address');
        //$cliente->photo = $request->input('photo');
        if($request->hasFile('foto')){
            $cliente['photo']= $request->file('foto')->store('uploads');
        }
        $cliente->save();
        // client::create($request1->all():
        //El modelo inserta en la bd
        Usuario::create($request->all());

        //Y luego me retorna a la vista welcome
        return redirect()->route('home.index')->with('message', '¡Estimado cliente su cuenta fue creada con éxito!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $servicio=DB::table('ust_service_type')->find($id);
        return redirect()->route('home.index')->with($servicio);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
