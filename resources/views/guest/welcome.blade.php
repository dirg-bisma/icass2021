<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>ICASS</title>
    <script src="{{asset('qr/js/jquery-3.6.0.min.js')}}"></script>
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet" id="bootstrap-css" />
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
    <link href="{{asset('css/css2.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('css/all.css')}}" >
    <style>
        table.table h3{
            font-family: "Roboto";
            font-size: 1rem;
        }
        table.table p {
            font-family: "Roboto";
            font-size: 0.6rem;
        }
    </style>
    <script src="{{asset('js/jquery.validate.min.js')}}"></script>
    <script src="{{asset('js/additional-methods.min.js')}}"></script>
</head>
<body>
    <div class="container mt-1 mb-2">
        <div class="row">
            <div class="col">
                {{ Session::get('meja') }}
            </div>
            <div class="col text-right">
                {{ Session::get('customer') }}
            </div>
        </div>
    </div>

    <div class="container">
    <div class="row">
        <div class="col-12">
            @if(!Session::get('customer'))
            <form method="POST" action="{{ url('register') }}" id="formmeja" name="formmeja">
                @csrf
                <div class="form-group row">
                  <label for="customer" class="col-4 col-form-label">Nama</label>
                  <div class="col-8">
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <div class="input-group-text">
                          <i class="fa fa-address-card"></i>
                        </div>
                      </div>
                      <input id="customer" name="customer" placeholder="input nama anda" type="text" class="form-control">
                    </div>
                  </div>
                </div>
                <div class="form-group row">
                    <label for="customer" class="col-4 col-form-label">Meja</label>
                    <div class="col-8">
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fa fa-tag"></i>
                          </div>
                        </div>
                        <div id="lstmeja"></div>
                        <select name="meja" id="meja" class="form-control">
                            <option value="">-Pilih Meja-</option>
                            @foreach ($meja as $data)
                            <option value="{{ $data->id }}">{{$data->nama}}</option>
                            @endforeach
                        </select>
                      </div>
                    </div>
                  </div>
                <div class="form-group row">
                  <div class="offset-4 col-8">
                    <button name="submit" type="submit" class="btn btn-primary">Pilih Meja dan Pesan</button>
                  </div>
                </div>
              </form>
              <p>Jika Anda ingin melihat menu silahkan klik link di bawah</p>
              <a class="btn btn-success" href="{{ url('vwmenu') }}">MENU</a>

            @else
              <h3>Anda Sudah Login.</h3>
              <p>anda ingin memesan silahkan menuju menu dengan klik link di bawah</p>
              <a class="btn btn-success" href="{{ url('menu') }}">MENU</a>
            @endif
        </div>
    </div>
    </div>


</body>
<script>
var token = "";
$(document).ready(function(){
    //getToken();
    $("#formmeja").validate();
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
            lstDataMeja();
        }
    });
}

function lstDataMeja(){
    uri = "{{ URL::to('/api/data_meja') }}"+"?status=0&orderby=id,desc";
    $.ajax({
        url: uri,
        headers : {"Authorization" : "Bearer " + window.token},
        dataType: "json",
        success: function(data) {
            var items = [];
            items.push("<select name=\"meja\" id=\"meja\" class=\"form-control\">");
            $.each( data['data'], function( key, val ) {
                    items.push("<option value=\""+val.id+"\">"+val.nama+"</option>");
            });
            items.push("</select>");
            $('#lstmeja').html(items.join( "" ));
        }
    });
}
</script>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div id="pre-nota"></div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div>
      </div>
    </div>
  </div>
</html>
