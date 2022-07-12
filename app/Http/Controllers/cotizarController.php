<?php

namespace App\Http\Controllers;

use App\Models\Additional_service_type;
use App\Models\places;
use App\Models\adicional;
use App\Models\fare;
use App\Models\service_booking;
use App\Models\service_type;
use App\Models\vehicle;
use Illuminate\Http\Request;
use App\Models\Order;
use Illuminate\Support\Facades\DB;
use Symfony\Component\Console\Input\Input;

class cotizarController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function getPlaces()
    // {
    //    // $places = places::all();
    //    // $fares = fare::all();

    //     $location = DB::table('ust_place')->pluck("place_name","id");
    // // $fare = DB::select('SELECT p.place_name, f.id_destination FROM ust_place p, ust_fare f WHERE p.id = f.id_destination AND f.id_location = 6;');


    //     //$fare = fare::all();

    //     return view('cotizar.test', compact('location'));
    // }

    public function getDestination($id_place)
    {
        $destination = DB::table('ust_place')
                        ->join('ust_fare', 'ust_place.id','=','ust_fare.id_destination')
                        ->select('ust_fare.id_destination', 'ust_place.place_name')
                        ->where('ust_fare.id_location', $id_place)
                        ->pluck("place_name","id_destination");

        //$destination1= DB::table("ust_place","ust_fare")->where("ust_place.id = ust_fare.id_destination and id_location",$id)->pluck("place_name","ust_place.id");

        return json_encode($destination);
    }



    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //$

        $location = DB::table('ust_place')->pluck("place_name","id");
        $adicionales = Additional_service_type::all();
        $tiposervicio = service_type::all();
        $vehicle = DB::table('ust_vehicle')->get();
        $fare = vehicle::all();
//         $fare = fare::join("ust_place","ust_place.id", "=", "ust_fare.id_destination")
// ->select("ust_place.place_name", "ust_fare.id_destination")
// ->get();

        return view('cotizar.create', compact('location','adicionales','tiposervicio','vehicle','fare'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {


        $request->validate([

        ]);
        // $cotizar = new service_booking();
        // $cotizar->id_client = 1;
       // $cotizar->id_service_type = Input::getna('tipos');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
     /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
*/
    public function DestinationName(Request $request){
        //$data=places::select('place_name','id')->where('id_location',$request->id)->get();

        $data = fare::join("ust_place","ust_place.id", "=", "ust_fare.id_destination")
->select("ust_place.place_name", "ust_fare.id_destination")->where("id_location", "=", $request)
->get();

        return response()->json($data);
    }
}
