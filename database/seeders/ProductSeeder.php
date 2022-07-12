<?php
namespace Database\Seeders;
use Illuminate\Database\Seeder;
use App\Models\Product;
class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    ////Metodo usado para agregar datos a los campos de la tabla
    public function run()
    {
        //Sentacia para crear los datos 
        Product::create([
            //columna equivalente a VARCHAR con una longitud
            'name' => 'Implemetos deportivos',
            //colunma equivalente a DOUBLE
            'price' => 200,
            //columna equivalente a VARCHAR con una longitud
            'description' => 'medida estandar',
            //columna equivalente a VARCHAR con una longitud
            'image' => 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.eluniversal.com.co%2Fdeportes%2Fclubes-exigen-entrega-de-implementos-deportivos-AI4578772&psig=AOvVaw0DlnGmqsEYqt9cJzoR6pJ-&ust=1653423811311000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCIjGuOq59vcCFQAAAAAdAAAAABAI'
        ]);

    }
}
