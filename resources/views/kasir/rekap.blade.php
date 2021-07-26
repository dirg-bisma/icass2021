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
            <li class="nav-item ">
              <a class="nav-link" href="{{ URL::to('kasir/sale') }}">Kasir <span class="sr-only"></span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="#">Rekap <span class="sr-only">(current)</span></a>
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
                                                                            <button type="button" class="btn btn-danger"><i class="fa fa-power-off"></i></button>
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
    uri = "{{ URL::to('/api/pesanan?orderby=id,desc') }}"+"&status=0"
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
