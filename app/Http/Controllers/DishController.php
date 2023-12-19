<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Dishes;
use App\Http\Requests\DishStoreRequest;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class DishController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //all dishes
        $dishes = Dishes::all();

        //return Json response
        return response()->json([
            'dishes' => $dishes
        ], 200);

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(DishStoreRequest $request)
    {
        try {
            $imageName = Str::random(32).".".$request->img->getClientOriginalExtension();

            //Create Dish
            Dishes::create([
                'name' => $request->name,
                'description' => $request->description,
                'price' => $request->price,
                'img' => $imageName
            ]);

            //Save img in Storage folder 
            Storage::disk('public')->put($imageName, file_get_contents($request->img));

            //return json response
            return response()->json([
                'message' => "Dish successfully created"
            ], 200);
        } catch (Exception $e) {
            //return json response
            return response()->json([
                'message' => "Something went really wrong!"
            ], 500);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //Dish detail
        $dish = Dishes::find($id);
        if(!$dish) {
            return response()->json([
                'message' => 'Dish not found.'
            ], 404);
        }

        //return json response
        return response()->json([
            'dish' => $dish
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(DishStoreRequest $request, string $id)
    {
        try {
            //find dish
            $dish = Dishes::find($id);
            if(!$dish) {
                return response()->json([
                    'message' => 'Dish not found'
                ], 404);
            }

            // echo "name : $request->name\n";
            // echo "description: $request->description\n";
            // echo "price : $request->price\n";
            $dish->name = $request->name;
            $dish->description = $request->description;
            $dish->price = $request->price;

            if($request->img) {
                //public storage
                $storage = Storage::disk('public');

                //old img delete
                if ($storage->exists($dish->img)) {
                    $storage->delete($dish->img);
                }
                //image name
                $imageName = Str::random(32).".".$request->img->getClientOriginalExtension();
                $dish->img = $imageName;

                //img json response
                $storage->put($imageName, file_get_contents($request->img));
            }

            //Update dish
            $dish->save();

            //retunf json response
            return response()->json([
                'message' => 'Dish successfully updated.'
            ], 200);
        } catch(\Exception $e) {
            return response()->json([
                'message' => "Something went really wrong!"
            ], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //detail
        $dish = Dishes::find($id);
        if(!$dish) {
            return response()->json([
                'message' => 'Dish not found.'
            ], 404);
        }

        //public storage
        $storage = Storage::disk('public');

        //img delete
        if ($storage->exists($dish->img)) {
            $storage->delete($dish->img);
        }

        //delete dish
        $dish->delete();

        //retunf json response
        return response()->json([
            'message' => 'Dish successfully deleted.'
        ], 200);
    }

    // function searchByName(String $name){
    //     // return ['result' => 'Data from data'];
    //     return Dishes::where("name", "like", "%".$name."%")->get();
    // }

    function searchByName(String $name) {
        if (empty($name)) {
            return ['message' => 'Search term is empty'];
        } else 
        return Dishes::where('name', 'like', '%' . $name . '%')->get();
    }
    
}
