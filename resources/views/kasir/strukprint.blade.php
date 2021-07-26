<style type="text/css">
    /*	page[size="A4"] {
      width: 55mm;
      display: block;
      margin: 0;
      margin-bottom: 2cm;
        line-height: 20px;
    }
    @media print {
      table, page[size="A4"] {
        margin: 0px;
        box-shadow: 0;
        padding:0px;
      }
    }*/
    table, tr, td {
        padding: 0px;
    }
    </style>
    <page size="A4">
        <table style="width: 96%;text-align: center;font-family:Monospace;margin-left:-10px">
            <tr><td style="font-size: 30px">ICASS</td></tr>
            <tr><td>--------------------------</td></tr>
            <tr><td style="font-size: 14px;">{{ date('d-m-Y H:i:s') }}</td></tr>
            <tr><td>--------------------------</td></tr>
            <?php $total=0;?>
            <?php $bayar=0;?>
            <?php $kembalian=0;?>
            <?php $customer="";?>
            <?php $meja="";?>
            @foreach ($pesanan_detail as $row)
            <tr><td>{{ $row->nama_menu." (".$row->jumlah."*".number_format($row->harga).")" }}</td></tr>
            <?php $total=$row->total;?>
            <?php $bayar=$row->bayar;?>
            <?php $kembalian=$row->kembalian;?>
            <?php $customer=$row->customer;?>
            <?php $meja=$row->nama_meja;?>
            @endforeach

            <tr><td>--------------------------</td></tr>
            <tr><td>Total {{ number_format($total) }}</td></tr>
            <tr><td>Bayar {{ number_format($bayar) }}</td></tr>
            <tr><td>Kembalian {{ number_format($kembalian) }}</td></tr>
            <tr><td>--------------------------</td></tr>
            <tr><td style="font-size: 20px;">TERIMA KASIH</td></tr>
            <tr><td>{{ $customer }}</td></tr>
            <tr><td>{{ $meja }}</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>--------------------------</td></tr>
            <tr><td>--------------------------</td></tr>
            <tr><td>--------------------------</td></tr>
            <tr><td>--------------------------</td></tr>

        </table>
    </page>
    <script type="text/javascript">
            setTimeout(function () { window.print();window.close(); }, 500);
          //  window.onfocus = function () { setTimeout(function () { window.close(); }, 500); }
    </script>
