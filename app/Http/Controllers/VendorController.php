<?php

namespace App\Http\Controllers;

use App\Http\Resources\VendorResource;
use App\Vendor;
use App\Tag;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class VendorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return AnonymousResourceCollection
     */
    public function index(Request $request)
    {
        $tags = $request->tags;

        if (!empty($tags) && count($tags) > 0) {
            return Vendor::with('tags')->where('name', $tags)->get();
        }

        return VendorResource::collection(Vendor::paginate(), $tags);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data_vendor = new Vendor;
        $data_vendor->name = $request->name;
        $data_vendor->save();

        return response()->json([
          'message' => 'Vendors records created', 
          'data' => $data_vendor
      ], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data_vendor = Vendor::whereId($id)->first();

        if ($data_vendor) {
            return response()->json([
                'message' => 'Vendors show',
                'data'    => $data_vendor
            ], 201);
        } else {
            return response()->json([
                'message' => 'Vendors Not Found!',
                'data'    => ''
            ], 404);
        }
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

        $data_vendor = Vendor::find($id);
        $data_vendor->name = $request->name;
        $data_vendor->save();
        return response()->json([
            'message' => 'Vendor record update',
            'data' => $data_vendor
        ], 201); 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(Vendor::where('id', $id)->first()) {
            $data_vendor = Vendor::find($id);
            $data_vendor->delete();

            return response()->json([
              'message' => 'Vendors records deleted'
          ], 201);

        } else {
            return response()->json([
              'message' => 'Vendors not found'
          ], 404);
        } 
    }

}