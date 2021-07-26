<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>ICASS</title>
    <script src="{{asset('qr/js/jquery-3.6.0.min.js')}}"></script>
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet" id="bootstrap-css" />
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
    <script src="{{asset('js/fa.js')}}"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <style>
        body {
        padding-top: 3rem;
        }
        .starter-template {
        padding: 0.5rem;
        text-align: center;
        }
        table.table h3{
            font-family: "Roboto";
            font-size: 1rem;
        }
        table.table p {
            font-family: "Roboto";
            font-size: 0.6rem;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="#">ICASS</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Kasir <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="{{ URL::to('kasir/rekap') }}">Rekap <span class="sr-only">(current)</span></a>
            </li>

          </ul>

        </div>
      </nav>
      <!-- main container-->
      <main role="main" class="container-fluid">

        <div class="container-lg m-3 bg-light">
            <div class="row">
                <div class="col-md-12">
                    <table>
                        <tr>
                            <td style="width: 620px;vertical-align: top;">
                                <div class="container" style="height: 600px">
                                    <table style="table-layout:fixed;width:100%">
                                        <tbody id="datameja">
                                            <tr>
                                                <td>
                                                    <div class="card m-2">
                                                        <div class="card-body rounded border border-dark">
                                                            <table>
                                                                <tr>
                                                                    <td style="width: 160px">
                                                                        <h5 class="card-title">--</h5>
                                                                        <h6 class="card-subtitle mb-2 text-muted">--</h6>
                                                                    </td>
                                                                    <td style="border-left: 1px solid black; width: 200px">
                                                                        <div class="m-2">
                                                                            -- <br>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div>
                                                                            <button type="button" class="btn btn-success"><i class="fa fa-money"></i></button>
                                                                            <button type="button" class="btn btn-primary"><i class="fa fa-shopping-bag"></i></button>
                                                                            <button type="button" class="btn btn-print"><i class="fa fa-power-off"></i></button>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </td>
                            <td style="width: 700px;vertical-align: top;">
                                <div class="container">
                                    <div class="card m-2 rounded border border-success">
                                        <div class="card-body">
                                            <table>
                                                <tr>
                                                    <td>
                                                        <div class="container-fluid" id="bayar_pesanan">
                                                            <table style="table-layout:fixed;width:100%;padding:2px">
                                                                <tbody>
                                                                    <tr>
                                                                        <td>--</td>
                                                                        <td>--</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>

                                                        </div>
                                                        <hr>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="container-fluid">
                                                        <form action="{{ URL::to('kasir/bayar') }}" method="POST">
                                                            <input type="hidden" name="id_meja" id="id_meja">
                                                            <input type="hidden" name="t_pesanan_id" id="t_pesanan_id">
                                                            @csrf
                                                            <table style="table-layout:fixed;width:100%;padding:10px" class="table-sm">
                                                                <tr>
                                                                    <td>Total</td>
                                                                    <td style="vertical-align:middle"><div id="totalBayar">--</div> <input type="hidden" name="txtTotalBayar" id="txtTotalBayar"> </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Tunai</td>
                                                                    <td style="vertical-align:middle">
                                                                        <input type="number" class="form-control" name="txtTunai" id="txtTunai" onkeyup="setKembalian()"  placeholder="input jumlah pembayaran">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Kembalian</td>
                                                                    <td style="vertical-align:middle">
                                                                        <input type="text" name="txtKembalian" id="txtKembalian" readonly class="form-control">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td></td>
                                                                    <td style="vertical-align:middle">
                                                                        <button class="btn btn-danger" type="submit" id="btnBayar" disabled>Bayar</button>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </form>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
      </main>


</body>
<script>
var token = "";
$(document).ready(function(){
    getToken();
    setInterval(getToken, 10000);
});

function getToken(){
    $.ajax({
        url: "{{ URL::to('api/get-token') }}",
        headers: {"Authorization" : "Bearer e9bcea6155e98ab3e9f9a065269584d5"},
        type: "POST",
        data: {"secret" : "b6e11605e6a081388c2fdc99e78e866a"},
        dataType: "json",
        success: function(data){
            window.token = data.data.access_token;
            showDataMeja();
        }
    });
}

function formatHarga(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function showDataMeja(){
    uri = "{{ URL::to('/api/pesanan?orderby=id,desc') }}"+"&status=1"
    $.ajax({
        url: uri,
        headers : {"Authorization" : "Bearer " + window.token},
        dataType: "json",
        success: function(data) {
            var items = [];
            $.each( data['data'], function( key, val ) {
                    items.push(
                    "<tr><td><div class=\"card m-2\"><div class=\"card-body rounded border border-dark\">"+
                    "<table><tr><td style=\"width: 160px\">"+
                    "<h5 class=\"card-title\">"+val.nama+"</h5><h6 class=\"card-subtitle mb-2 text-muted\">"+val.customer+"</h6></td>"+
                    "<td style=\"border-left: 1px solid black; width: 210px\"><div class=\"m-2\">"+
                    "Total Bayar "+formatHarga(val.total)+"<br>"+
                    "</div>"+
                    "</td><td><div>"+
                    "<button onclick=\"DetailPesanan('"+val.pesanan_id+"')\" data-toggle=\"modal\" data-target=\"#PesananModal\" type=\"button\" class=\"btn btn-primary\"><i class=\"fa fa-shopping-bag\"></i></button>&nbsp"+
                    "<button onclick=\"bayarPesanan('"+val.pesanan_id+"')\" type=\"button\" class=\"btn btn-success\"><i class=\"fa fa-money\"></i></button>&nbsp"+
                    "<button type=\"button\" class=\"btn btn-danger\" ><i class=\"fa fa-power-off\"></i></button>&nbsp"+
                    "</div></td></tr></table></div></div></td></tr>");
            });
            $('#datameja').html(items.join( "" ));
        }
    });
}

function DetailPesanan(id){
    $('#detail_pesanan').html();
    urutan = [];
    uri = "{{ URL::to('/api/urutan_pesanan?orderby=urutan,asc') }}"+"&t_pesanan_id="+id
    $.ajax({
        url: uri,
        headers : {"Authorization" : "Bearer " + window.token},
        dataType: "json",
        success: function(data) {
            urutan = data;

            pesanan = [];
            uri2 = "{{ URL::to('/api/pesanan_detail?orderby=id,asc') }}"+"&t_pesanan_id="+id
            $.ajax({
                url: uri2,
                headers : {"Authorization" : "Bearer " + window.token},
                dataType: "json",
                success: function(data) {
                    pesanan = data;
                    var items = [];
                    items.push("<table class=\"table table-light\"><thead class=\"thead-light\">"+
                            "<tr><th>Nama</th><th>Jumlah</th><th>Harga</th><th>Total</th><th>Action</th></tr></thead><tbody>");
                    total = 0;
                    $.each( urutan['data'], function( key, value ) {
                        items.push("<tr><td colspan=\"4\"><strong>Order ke "+value.urutan+"</strong></td>");
                        items.push("<td></td></tr>");
                        $.each(pesanan['data'], function(key, val){
                            if(value.urutan == val.urutan){
                                items.push("<tr><td>"+val.nama_menu+"</td>");
                                items.push("<td>"+val.jumlah+"</td>");
                                items.push("<td>"+formatHarga(val.harga)+"</td>");
                                items.push("<td colspan=\"2\">"+formatHarga(parseInt(val.harga)*parseInt(val.jumlah))+"</td>");
                                items.push("</tr>");
                                total += parseInt(val.harga)*parseInt(val.jumlah);
                                //$('#id_meja').val();

                            }
                        });
                    });
                    items.push("<tr><td colspan=\"4\"><strong>Total</strong></td><td><strong>"+formatHarga(total)+"</strong></td></tr>");
                    items.push("</tbody></table>");
                    $('#detail_pesanan').html(items.join( "" ));
                }
            });
        }
    });
}
var totalBayar = 0
function bayarPesanan(id){
    uri = "{{ URL::to('/api/pesanan_detail?orderby=id,desc') }}"+"&t_pesanan_id="+id
    $.ajax({
        url: uri,
        headers : {"Authorization" : "Bearer " + window.token},
        dataType: "json",
        success: function(data) {
            var items = [];
            items.push("<table style=\"table-layout:fixed;width:100%;padding:2px\" class=\"table-sm\"><tbody>");
            $.each( data['data'], function( key, val ) {
                items.push("<tr><td>"+val.nama_menu+" ("+formatHarga(val.harga)+") x "+val.jumlah+"</td><td>"+formatHarga(parseInt(val.harga)*parseInt(val.jumlah))+"</td></tr>");
                totalBayar += parseInt(val.harga)*parseInt(val.jumlah);
                $('#t_pesanan_id').val(val.t_pesanan_id);
                console.log(val.t_pesanan_id);
            });
            items.push("</tbody></table>");
            $('#bayar_pesanan').html(items.join( "" ));
            $('#totalBayar').html(formatHarga(totalBayar));
            $('#txtTotalBayar').val(totalBayar);
            totalBayar = 0;
        }
    });
}

function setKembalian(){
    totalBayar = $('#txtTotalBayar').val();
    tunai = $('#txtTunai').val();
    if(tunai != "" && tunai > 0){
        kembalian = tunai-parseInt(totalBayar);
        $('#txtKembalian').val(formatHarga(kembalian));
        if(kembalian >= 0){
            $('#btnBayar').prop('disabled', false);
            $('#btnBayar').removeClass('btn-danger');
            $('#btnBayar').addClass('btn-success');
        }else{
            $('#btnBayar').prop('disabled', true);
            $('#btnBayar').removeClass('btn-success');
            $('#btnBayar').addClass('btn-danger');
        }
    }else{
        $('#txtKembalian').val('');
        $('#btnBayar').prop('disabled', true);
        $('#btnBayar').removeClass('btn-success');
        $('#btnBayar').addClass('btn-danger');


    }

    console.log(tunai);
}
</script>

<!-- Modal -->
<div class="modal fade" id="PesananModal" tabindex="-1" role="dialog" aria-labelledby="PesananModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="PesananModalLabel">Daftar Pesanan</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div id="detail_pesanan"></div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</html>
