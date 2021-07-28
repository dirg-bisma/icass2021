<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>ICASS</title>
    <script src="{{asset('qr/js/jquery-3.6.0.min.js')}}"></script>
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet" id="bootstrap-css" />
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <style>
        body {
        padding-top: 3rem;
        }
        table.table h3{
            font-family: "Roboto";
            font-size: 1rem;
        }
        table.table p {
            font-family: "Roboto";
            font-size: 0.6rem;
        }

        .Scroll {
        overflow-y: scroll;
        position: absolute;
        top: 110px;
        bottom: 90px;
        right: 0px;
        left: 0px;
        }
    </style>
</head>
<body>
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-primary">
        <a class="navbar-brand" href="#">ICASS</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item active">
              <a class="nav-link" href="#">{{ Session::get('meja') }} - {{ Session::get('customer') }}<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Tagihan</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Saran</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Info</a>
            </li>
          </ul>
        </div>
      </nav>
    <div class="container">
        <div class="row">
              <ul class="nav nav-tabs mx-auto " id="myTab" role="tablist" style="margin-top : 15px">
                <li class="nav-item">
                  <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true"><i class="fas fa-home"></i> </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" id="profile-tab" data-toggle="tab" href="#food" role="tab" aria-controls="food" aria-selected="false"><i class="fas fa-utensils"></i> Food</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" id="drink-tab" data-toggle="tab" href="#drink" role="tab" aria-controls="drink" aria-selected="false"><i class="fas fa-beer"></i> Drink</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="snack-tab" data-toggle="tab" href="#snack" role="tab" aria-controls="snack" aria-selected="false"><i class="fas fa-leaf"></i> Snack</a>
                  </li>
              </ul>
        </div>
        <div class="row" style="margin-top:50px">
            <div class="container">
                <div class="tab-content " id="myTabContent" >
                    <div class="tab-pane fade show active Scroll" id="home" role="tabpanel" aria-labelledby="fav-tab" >
                        <div id="fav"></div>
                    </div>
                    <div class="tab-pane fade Scroll" id="food" role="tabpanel" aria-labelledby="food-tab">

                    </div>
                    <div class="tab-pane fade Scroll" id="drink" role="tabpanel" aria-labelledby="drink-tab">

                    </div>
                    <div class="tab-pane fade Scroll" id="snack" role="tabpanel" aria-labelledby="snack-tab">

                    </div>
                  </div>
            </div>
        </div>
    </div>
    <div class="fixed-bottom">
        <input type="hidden" name="total_item" id="total_item" value="0">
        <input type="hidden" name="total_harga" id="total_harga" value="0">
        <div class="card">
            <div class="card-body">
              <div class="row">
                  <div class="col-6">
                    <button class="btn btn-primary" onclick="prenota()" data-toggle="modal" type="button" data-target="#exampleModal">
                        <i class="fas fa-shopping-cart "></i> <span class="badge"><div id="total_item_div">0</div> </span>
                    </button>
                  </div>
                  <div class="col-6 text-right" style="font-weight: bold" id="total_harga_div">
                    0
                  </div>
              </div>

            </div>
          </div>
    </div>
    <input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">
</body>
<script>
var token = "";
var pesanan = [];
var itemID = [];
var testOrder = new Object();;
var totalHarga = 0;
var totalJmlPesanan = 0;
$(document).ready(function(){
    @if (Session::get('customer'))
    localStorage.setItem("customer", '{{ Session::get("customer") }}');
    localStorage.setItem("meja", '{{ Session::get("meja") }}');
    @endif
    getToken();
    localStorage.setItem("pesanan", "")

});

function renderLocalData(){
    pesanan = localStorage.getItem("pesanan");
    pesanan = (pesanan) ? JSON.parse(pesanan) : [];
    itemID = pesanan;
    itemID.forEach(setValueItem);
    $('#total_harga_div').html(formatHarga(totalHarga));
    $('#total_harga').val(totalHarga);
    $('#total_item_div').html(totalJmlPesanan);
    $('#total_item').val(totalJmlPesanan);
    if(itemID.length == 0){ $('#btn-pesan').attr('disabled', true);}
}

function setValueItem(value, index, array){
    id = itemID[index].id;
    value = itemID[index].value;
    harga = itemID[index].harga;
    element = '#'+id+'_jml';
    if($(element).length){
        $(element).val(value);
    }else{
        console.log('div-id :' + element);
    }
    subTotal = 0;
    subTotal = parseInt(value)*parseInt(harga);
    totalHarga += parseInt(subTotal);
    totalJmlPesanan += parseInt(value);
}

function getToken(){
    $.ajax({
        url: "{{ URL::to('api/get-token') }}",
        headers: {"Authorization" : "Bearer e9bcea6155e98ab3e9f9a065269584d5"},
        type: "POST",
        data: {"secret" : "b6e11605e6a081388c2fdc99e78e866a"},
        dataType: "json",
        success: function(data){
            window.token = data.data.access_token;
            showDataMenuFood();
            @if (Session::get("pesanan_id"))
            DetailPesanan({{ Session::get("pesanan_id") }});
            @else
            $('#fav').html("<p style='text-align:center'>Anda Belum melakukan Pemesanan</p>");
            @endif

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
                            "<tr><th>Nama</th><th>Jumlah</th><th>Harga</th><th>Total</th></tr></thead><tbody>");
                    total = 0;
                    $.each( urutan['data'], function( key, value ) {
                        items.push("<tr><td colspan=\"3\"><strong>Order ke "+value.urutan+"</strong></td>");
                        items.push("<td></td></tr>");
                        $.each(pesanan['data'], function(key, val){
                            if(value.urutan == val.urutan){
                                items.push("<tr><td>"+val.nama_menu+"</td>");
                                items.push("<td>"+val.jumlah+"</td>");
                                items.push("<td>"+formatHarga(val.harga)+"</td>");
                                items.push("<td>"+formatHarga(parseInt(val.harga)*parseInt(val.jumlah))+"</td>");
                                items.push("</tr>");
                                total += parseInt(val.harga)*parseInt(val.jumlah);
                                //$('#id_meja').val();

                            }
                        });
                    });
                    items.push("<tr><td colspan=\"3\"><strong>Total</strong></td><td><strong>"+formatHarga(total)+"</strong></td></tr>");
                    items.push("</tbody></table>");
                    $('#fav').html(items.join( "" ));
                }
            });
        }
    });
}

function showDataMenuFood(){
    uri = "{{ URL::to('/api/menu_makanan?orderby=id,desc') }}";
    $.ajax({
        url: uri,
        headers : {"Authorization" : "Bearer " + window.token},
        dataType: "json",
        success: function(data) {
            var items = [];
            items.push("<div class='col-12'><table class='table table-image'><tbody id='data-menu'>");
            $.each( data['data'], function( key, val ) {
                    items.push(
                    "<tr><td class='w-50'><img src='"+val.gambar+"' class='img-fluid img-thumbnail' ></td>"+
                    "<td><div><h3>"+val.nama+"</h3><h3>"+formatHarga(val.harga)+"</h3><p>"+val.keterangan+"</p><div class='form-row'><div class='input-group'>"+
                    "<div class='input-group-prepend'>"+
                    "<button onclick=\"subItem('"+val.id+"')\" class='input-group-text' id='inputGroupPrepend'>-</button></div>"+
                    "<input type='hidden' value='"+val.harga+"' name='"+val.id+"_harga' id='"+val.id+"_harga'>"+
                    "<input type='hidden' value='"+val.nama+"' name='"+val.id+"_nama' id='"+val.id+"_nama' >"+
                    "<input type='number' value='0' style='text-align: center;' name='"+val.id+"_jml' id='"+val.id+"_jml' class='form-control form-control' readonly>"+
                    "<div class='input-group-append'>"+
                    "<button onclick=\"addItem('"+val.id+"')\" class='input-group-text' id='inputGroupAppend'>+</button></div></div></div></td></tr>");
            });
            items.push("</tbody></table></div>");
            $('#food').html(items.join( "" ));
            showDataMenuDrink();
        }
    });
}
function showDataMenuDrink(){
    uri = "{{ URL::to('/api/menu_minuman?orderby=id,desc') }}"
    $.ajax({
        url: uri,
        headers : {"Authorization" : "Bearer " + window.token},
        dataType: "json",
        success: function(data) {
            var items = [];
            items.push("<div class='col-12'><table class='table table-image'><tbody id='data-menu'>");
            $.each( data['data'], function( key, val ) {
                    items.push(
                    "<tr><td class='w-50'><img src='"+val.gambar+"' class='img-fluid img-thumbnail' ></td>"+
                    "<td><div><h3>"+val.nama+"</h3><h3>"+formatHarga(val.harga)+"</h3><p>"+val.keterangan+"</p><div class='form-row'><div class='input-group'>"+
                    "<div class='input-group-prepend'>"+
                    "<button onclick=\"subItem('"+val.id+"')\" class='input-group-text' id='inputGroupPrepend'>-</button></div>"+
                    "<input type='hidden' value='"+val.harga+"' name='"+val.id+"_harga' id='"+val.id+"_harga'>"+
                    "<input type='hidden' value='"+val.nama+"' name='"+val.id+"_nama' id='"+val.id+"_nama' >"+
                    "<input type='number' value='0' style='text-align: center;' name='"+val.id+"_jml' id='"+val.id+"_jml' class='form-control form-control' readonly>"+
                    "<div class='input-group-append'>"+
                    "<button onclick=\"addItem('"+val.id+"')\" class='input-group-text' id='inputGroupAppend'>+</button></div></div></div></td></tr>");
            });
            items.push("</tbody></table></div>");
            $('#drink').html(items.join( "" ));
            showDataMenuSnack();
        }
    });
}

function showDataMenuSnack(){
    uri = "{{ URL::to('/api/menu_snack?orderby=id,desc') }}"
    $.ajax({
        url: uri,
        headers : {"Authorization" : "Bearer " + window.token},
        dataType: "json",
        success: function(data) {
            var items = [];
            items.push("<div class='col-12'><table class='table table-image'><tbody id='data-menu'>");
            $.each( data['data'], function( key, val ) {
                    items.push(
                    "<tr><td class='w-50'><img src='"+val.gambar+"' class='img-fluid img-thumbnail' ></td>"+
                    "<td><div><h3>"+val.nama+"</h3><h3>"+formatHarga(val.harga)+"</h3><p>"+val.keterangan+"</p><div class='form-row'><div class='input-group'>"+
                    "<div class='input-group-prepend'>"+
                    "<button onclick=\"subItem('"+val.id+"')\" class='input-group-text' id='inputGroupPrepend'>-</button></div>"+
                    "<input type='hidden' value='"+val.harga+"' name='"+val.id+"_harga' id='"+val.id+"_harga' >"+
                    "<input type='hidden' value='"+val.nama+"' name='"+val.id+"_nama' id='"+val.id+"_nama' >"+
                    "<input type='number' value='0' style='text-align: center;' name='"+val.id+"_jml' id='"+val.id+"_jml' class='form-control form-control' readonly>"+
                    "<div class='input-group-append'>"+
                    "<button onclick=\"addItem('"+val.id+"')\" class='input-group-text' id='inputGroupAppend'>+</button></div></div></div></td></tr>");
            });
            items.push("</tbody></table></div>");
            $('#snack').html(items.join( "" ));
            renderLocalData();
        }
    });

}

function formatHarga(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function addItem(inputId){
    NumBef = $('#'+inputId+'_jml').val();

    totalJmlPesanan = totalJmlPesanan+1;
    $('#total_item').val(totalJmlPesanan);
    $('#total_item_div').html(totalJmlPesanan);

    $('#'+inputId+'_jml').val(parseInt(NumBef)+1);
    Harga = $('#'+inputId+'_harga').val();
    totalHarga = totalHarga + parseInt(Harga);
    $('#total_harga').val(totalHarga);
    $('#total_harga_div').html(formatHarga(totalHarga));

    if(!itemID.find(x=>x.id == inputId.toString())){
        var Order = new Object();
        Object.assign(Order, {id : inputId, value : 1, nama : $('#'+inputId+'_nama').val(), harga : $('#'+inputId+'_harga').val()});
        itemID.push(Order);
    }else{
        arr = itemID.findIndex(x=>x.id == inputId);
        itemval = itemID[arr].value;
        itemID[arr].value = itemval+1;
    }
    localStorage.setItem("pesanan", JSON.stringify(itemID));
    if(itemID.length > 0){ $('#btn-pesan').attr('disabled', false);}
}

function subItem(inputId){
    NumBef = $('#'+inputId+'_jml').val();
    if(parseInt(NumBef) > 0){
        $('#'+inputId+'_jml').val(parseInt(NumBef)-1);

        if(parseInt(totalJmlPesanan) > 0){
            totalJmlPesanan = totalJmlPesanan-1;
            $('#total_item').val(totalJmlPesanan);
            $('#total_item_div').html(totalJmlPesanan);
        }

        if(parseInt(totalHarga) > 0){
            Harga = $('#'+inputId+'_harga').val();
            totalHarga = totalHarga-parseInt(Harga);
            $('#total_harga').val(totalHarga);
            $('#total_harga_div').html(formatHarga(totalHarga));
        }

        arr = itemID.findIndex(x=>x.id == inputId);
        if(NumBef == 1){
            itemID.splice(arr, 1);
        }else{
            itemval = itemID[arr].value;
            itemID[arr].value = itemval-1;
        }
    }
    localStorage.setItem("pesanan", JSON.stringify(itemID));
    if(itemID.length == 0){ $('#btn-pesan').attr('disabled', true);}
}

var pre_note_text = [];
function prenota()
{
    pre_note_text.push("<table class=\"table table-light\"><thead class=\"thead-light\">"+
    "<tr><th>Nama</th><th>Jumlah</th><th>Harga</th></tr></thead><tbody>");
    itemID.forEach(itemTampil);
    pre_note_text.push("<tr><td colspan=\"2\"><strong>Total</strong></td><td><strong>"+formatHarga($('#total_harga').val())+"</strong></td></tr>");
    pre_note_text.push("</tbody></table>");
    $('#pre-nota').html(pre_note_text.join(""));
    pre_note_text = [];

}

function itemTampil(item, index) {
        pre_note_text.push(
            "<tr>" +
            "<td>" + itemID[index].nama + "<input type=\"hidden\" name=\""+itemID[index].id+"\" value=\""+itemID[index].value+"\"></td>"+
            "<td>" + itemID[index].value + "</td>"+
            "<td>" + formatHarga(itemID[index].harga) + "</td>"+
            "</tr>"
        );
}

var order = [];
var jsonString = {};
function postData(){
order.push({info :{customer:"{{ Session::get('customer') }}", meja:"{{ Session::get('meja') }}", idmeja: "{{ Session::get('idmeja') }}" },item : itemID});
   $.ajax({
        url: "{{ URL::to('pesan/simpan') }}",
        cache: false,
        type: "POST",
        headers: {
            'X-CSRF-TOKEN': jQuery('#token').val()
        },
        contentType: 'application/json;',
        data: JSON.stringify(order),
        success: function(json){
            itemID = [];
            localStorage.setItem('pesanan', JSON.stringify(itemID));
            alert("Pesanan Anda telah kami terima, Terima kasih.");
            console.log(json);
            location.reload();
        }
    });

}

</script>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <form action="POST" >
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Pesanan Anda</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <div class="modal-body">
            <div id="pre-nota"></div>
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
            <button type="button" class="btn btn-primary" onclick="postData()" id="btn-pesan" name="btn-pesan">Pesan</button>
            </div>
        </div>
        </form>
    </div>
  </div>
</html>
