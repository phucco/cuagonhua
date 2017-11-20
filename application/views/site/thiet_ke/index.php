<div class="col-beta">
    <div class="sanpham">        

        <div class="units-row end">
            <div class="unit-40">
                <div class="text-centered title-heart">
                    <h1>
                        Tự thiết kế mẫu cửa
                    </h1>
                    <div class="traitim">
                        <span class="heart">
                            <img src="<?php echo base_url(); ?>assets/css/images/heat.png">
                        </span>
                    </div>
                </div>             

                <style type="text/css">
                    .table select {
                        width: 80px;
                    }
                </style>
                <table class="table">
                    <tr>
                        <td>
                            Chọn mẫu hoa văn cửa
                        </td>
                        <td>
                            <select id="selecthoavan">
                                <option></option>
                                <option value="smo-05.png">SMO-05</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Chọn bảng màu
                        </td>
                        <td>
                            <select id="selectbangmau">
                                <option></option>
                                <option value="H01.png">H01</option>
                            </select>
                        </td>
                    </tr>
                </table>
            </div>

            <div class="unit-40 colright2">                
            <img id="result" src="#" style="width: 400px; background: url('<?php echo base_url(); ?>upload/bangmau/H01.png');">
            </div>

            <script type="text/javascript">
                $("#selectbangmau").change(function(){
                    var bangmau = $("#selectbangmau").val();
                    
                    alert(bangmau_src);
                });
                $("#selecthoavan").change(function(){
                    var hoavan = $("#selecthoavan").val();
                    var hoavan_src = "<?php echo base_url(); ?>upload/hoavan/" + hoavan;

                    #("#result").attr("src", hoavan_src).load(function(){
                        
                    });
                });
            </script>
        </div>

    </div>
</div>