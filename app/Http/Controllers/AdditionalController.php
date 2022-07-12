<?php

namespace App\Http\Controllers;

use App\Models\additional_service_type;
use App\Models\service_type;
use App\Models\vehicle;
use App\Models\vehicle_type;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdditionalController extends Controller
{
    public function productList()
    {
        $additional = additional_service_type::all();
        $location = DB::table('ust_place')->pluck("place_name","id");
        $tiposervicio = service_type::all();
        $vehicle = vehicle_type::all();
        $fare = vehicle::all();

        return view('products', compact('additional','location','tiposervicio','vehicle','fare'));
    }

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

    public function getPrice($lprice, $pprice){
        $price = DB::table('ust_fare')
        ->select('id','price')
        ->where('id_destination',$lprice)
        ->where('id_location',$pprice)
        ->pluck('price','id');

        return json_encode($price);
    }
}
