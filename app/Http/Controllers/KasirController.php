<?php namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\DB;
use App\Models\TPesanan;

class KasirController extends Controller{

    public function login(Request $request)
    {

    }

    public function sale(Request $request)
    {
        return view('kasir.sale');
    }

    public function rekap(Request $request)
    {
        return view('kasir.rekap');
    }

    public function bayar(Request $request)
    {
        $t_pesanan_id = $request->input('t_pesanan_id');
        $txtTotalBayar = $request->input('txtTotalBayar');
        $txtTunai = $request->input('txtTunai');
        $txtKembalian = $request->input('txtKembalian');


        $pesanan = TPesanan::find($t_pesanan_id);
        $pesanan->status = '1';
        $pesanan->bayar = $txtTunai;
        $pesanan->kembalian = preg_replace('/[\,\.]/', '', $txtKembalian);
        $pesanan->nama_kasir = 'kasir';
        $pesanan->tgl_bayar = date('Y-m-d H:i:s');
        $pesanan->save();

        DB::table('m_meja')->where('pesanan_id', $t_pesanan_id)->update(['status'=> '0', 'pesanan_id'=> '0', 'customer' => ' ']);
        //DB::query("update m_meja set status = 0, pesanan_id = NULL, customer = NULL where pesanan_id = '$t_pesanan_id'");
        return view('kasir.struk')->with('id_pesanan', $t_pesanan_id);


    }

    public function printstruk(Request $request)
    {
        $t_pesanan_id = $request->input('t_pesanan_id');
        $pesanan = DB::table('vw_pesanan_detail')->where('id', $t_pesanan_id)->get();
        return view('kasir.strukprint')->with('pesanan_detail', $pesanan);
    }

    public function freemeja(Request $request)
    {
        $meja = $request->input('nama');
        $customer = $request->input('customer');

        $query = DB::table('m_meja')->where('customer', $customer)->where('nama', $meja)
        ->update(['status'=> '0', 'pesanan_id'=> 'null', 'customer' => 'null']);
        if($query){

        }
    }
}
