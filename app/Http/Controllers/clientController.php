<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\client; //Incluir el modelo en el contralador
use Illuminate\Support\Facades\DB;
use App\Models\document;

class clientController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $ust_client = client::all();
       return view('welcome'); //Retornar a welcome despues que se registre
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $documento = document::all();

        return view('clientes.create',compact('documento'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        client::create($request->all());//Registrar en la base de datos
        return redirect()->route('cliente.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
}
