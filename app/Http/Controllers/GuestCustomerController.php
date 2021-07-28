<?php namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\DB;
use App\Models\TPesanan;
use App\Models\TPesananDetail;

use function GuzzleHttp\Promise\inspect;

class GuestCustomerController extends Controller{

    public function welcome(Request $request)
    {
        $meja = $meja = DB::table('m_meja')->where('status', '0')->get();
        return view('guest.welcome')->with('meja',$meja);
    }

    public function register(Request $request)
    {
        $id_meja = $request->input('meja');
        $customer = $request->input('customer');
        if($request->input('meja') && $request->input('customer')){
            $meja = DB::table('m_meja')->where('id', $id_meja)->first();
            if($meja->status == 0){
                $request->session()->put('idmeja', $id_meja);
                $request->session()->put('meja', $meja->nama);
                $request->session()->put('customer', $customer);
                DB::table('m_meja')
                    ->where('id', $id_meja)
                    ->update(['status' => '1', 'customer'=> $customer]);
                return redirect()->route('menu');
            }
            if($meja->status == 1){
                return redirect()->route('menu');
            }
        }else{
            return view('guest.not-login');
        }
    }


    public function menu(Request $request)
    {
        if($request->session()->get('meja') && $request->session()->get('customer') ){
            $idmeja = $request->session()->get('idmeja');
            $meja = $request->session()->get('meja');
            $customer = $request->session()->get('customer');
            $cekMeja = DB::table('m_meja')->where('id', $idmeja)->where('customer', $customer)->first();
            if($cekMeja->customer == ""){
                return redirect('logout');
            }else{
                return view('guest.menu');
            }
        }else{
            return redirect()->route('welcome');
        }
    }

    public function pesan(Request $request)
    {
        $pesanan = $request->json()->all();
        $customer = $pesanan[0]['info']['customer'];
        $idmeja = $pesanan[0]['info']['idmeja'];
        $meja = DB::table('m_meja')->where('id', $idmeja)->where('customer', $customer)->first();
        $jmlPesanan = $pesanan[0]['item'];
        $total = 0;
        for($i=0;$i<count($jmlPesanan);$i++){
            $total += $pesanan[0]['item'][$i]['value']*$pesanan[0]['item'][$i]['harga'];
        }


        if($meja->pesanan_id != "" || $meja->pesanan_id != "0"){

            $urutan = DB::table('t_pesanan_detail')->select(DB::raw('MAX(urutan) as urutan'))->where('t_pesanan_id', $meja->pesanan_id)->first();
            for($i=0;$i<count($jmlPesanan);$i++){
                DB::table('t_pesanan_detail')->insert([
                    't_pesanan_id' => $meja->pesanan_id,
                    'm_menu_id' => $pesanan[0]['item'][$i]['id'],
                    'jumlah' => $pesanan[0]['item'][$i]['value'],
                    'harga' => $pesanan[0]['item'][$i]['harga'],
                    'total_harga' => $pesanan[0]['item'][$i]['harga']*$pesanan[0]['item'][$i]['value'],
                    'status' => '0',
                    'urutan' => $urutan->urutan + 1,
                    'created_at' => date('Y-m-d H:i:s')
                ]);
            }
            $request->session()->put('pesanan_id', $meja->pesanan_id);
            return response()->json(['api_status'=>1, 'api_message'=> "success update data", 'data'=>$meja->pesanan_id]);

        }else{
            $dbPesanan = new TPesanan();
            $dbPesanan->meja_id = $meja->id;
            $dbPesanan->total = $total;
            $dbPesanan->customer = $customer;
            $dbPesanan->save();
            $dbPesanan->id;
            for($i=0;$i<count($jmlPesanan);$i++){
                DB::table('t_pesanan_detail')->insert([
                    't_pesanan_id' => $dbPesanan->id,
                    'm_menu_id' => $pesanan[0]['item'][$i]['id'],
                    'jumlah' => $pesanan[0]['item'][$i]['value'],
                    'harga' => $pesanan[0]['item'][$i]['harga'],
                    'total_harga' => $pesanan[0]['item'][$i]['harga']*$pesanan[0]['item'][$i]['value'],
                    'status' => '0',
                    'urutan' => '1',
                    'created_at' => date('Y-m-d H:i:s')
                ]);
            }

            DB::table('m_meja')
            ->where('id', $idmeja)
            ->where('customer', $customer)
            ->update(['pesanan_id'=>$dbPesanan->id]);
            $request->session()->put('pesanan_id', $dbPesanan->id);
            return response()->json(['api_status'=>1, 'api_message'=> "success new data", 'data'=> $dbPesanan->id]);
        }
    }

    public function bayar()
    {

    }

    public function home(Request $request)
    {
        $idmeja = $request->session()->get('idmeja');
        $meja = $request->session()->get('meja');
        $customer = $request->session()->get('customer');

        //DB::table('vw_pesanan')->where()
    }

    public function vwmenu(Request $request)
    {
        return view('guest.vwmenu');
    }

    public function logout(Request $request)
    {
        $request->session()->forget('customer');
        $request->session()->forget('idmeja');
        $request->session()->forget('meja');
        $request->session()->forget('pesanan_id');

        return redirect('/');
    }
}
