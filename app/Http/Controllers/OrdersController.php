<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Vendor;
use App\Tag;
use App\Orders;
use App\OrdersDetail;

class OrdersController extends Controller
{	
	//menampilakan list vendor dan list menu berdasarkan id vendor
	public function listOrder($id){
 		$vendor = Vendor::find($id);
 		$listOrder = $vendor->tags;
 		return response()->json([
 			"message" => "list order"
 			"listOrder" => $listOrder
 		], 201);
	}

	//memilih order berdasarkan vendor dan list menu (tags)
	public function orders(Request $request, $id){

		$vendor = Vendor::where('id',$id)->first();

		$id_tags_new = $request->id_tags_new; 
		$notes = $request->notes; 

		$order = new Orders;
		$order->vendor_id = $vendor->id;
		$order->total_tags = count($id_tags_new);
		$order->notes = $notes;
		$order->save();

		$qty_all = 0;

		foreach ($id_tags_new as $item) {

			$order_detail = new OrdersDetail();
			$order_detail->orders_id = $order->id;
			$order_detail->tags_id = $item['id_tag'];

			$qty_detail = $item['qty'];
			$order_detail->qty = $qty_detail;

			$qty_all = $qty_all + $qty_detail;
			$order_detail->save();
		}

		$order->total_qty = $qty_all;
		$order->save();

		return response()->json([
			"message" => "created list order"
			"listOrder" => $order
		], 201);
	}

	//menampilkan order yang dipilih 
	public function orderAll(){
		$order = Orders::with(["vendor"])->get();
		$data['order'] = $order;
		return response()->([
			"message" => "semua order"
			"allOrder" => $data
		], 201);
	}

	//menampilkan list order yang di pilih
	public function orderDetail($id){

		$order = Orders::with(["vendor"])->find($id);

		$order_detail = OrdersDetail::with("tag")->where("orders_id", $id)->get();

		$data['order'] = $order;
		$data['tags'] = $order_detail;
		return response()->([
			"message" => "detail order"
			"detailOrder" => $data
		], 201);
	}


}


