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
                            <td><a href="{{ URL::to('kasir/print') }}?t_pesanan_id={{ $id_pesanan }}" target="_blank" rel="noopener noreferrer">Cetak Struk</a></td>
                        </tr>
                        <tr>
                            <td><a href="{{ URL::to('kasir/sale') }}" rel="noopener noreferrer">Kembali</a></td>
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
