<script type="text/javascript">
$(document).ready(function(){
    var data_address = [];
    var address_grade = ['province','city','area'];

    $.ajax({
        type : "GET",
        async : true,
        url : "<?php echo site_url('member/address_get');?>",
        data : {},
        success : function(msg){
            if(msg){
                var msgobj = eval("("+ msg +")");
                if( msgobj.sta == 1 ){
                    data_address = msgobj.dat;
                    var html_province = '';
                    for( var i=0;i<msgobj.dat.length;i++ ){
                        if( msgobj.dat[i].father == 0 ){
                            var data_province = <?php echo empty($data['province'])?0:$data['province'];?>;
                            var selected = '';
                            if( data_province != 0 && data_province == msgobj.dat[i].number ){
                                selected = 'selected="selected"';
                            }
                            html_province += '<option value="'+msgobj.dat[i].number+'" '+selected+' >'+msgobj.dat[i].name+'</option>';
                        }
                    }
                    $("#province").append(html_province);
                    address_change('province');
                }
            }
        }
    });
    $("#province").change(function(){
        address_change('province');
    });
    $("#city").change(function(){
         address_change('city');
    });
    function address_change(type){
        var number = $('#'+type).val();
        var html = '<option value="">请选择</option>';
        for( var i=0;i<data_address.length;i++ ){
            if( data_address[i].father == number ){
                var d='';
                var selected = '';
                if( type=='province' ){
                    d = <?php echo empty($data['city'])?0:$data['city'];?>;
                }else if( type=='city' ){
                    d = <?php echo empty($data['area'])?0:$data['area'];?>;
                }
                if( d != 0 && d == data_address[i].number ){
                    selected = 'selected="selected"';
                }
                html += '<option value="'+data_address[i].number+'" '+selected+' >'+data_address[i].name+'</option>';
            }
        }
        if( type=='province' ){
            $("#city").html(html);
            if( $("#city").val() != '' ){
                address_change('city');
            }
        }else if( type=='city' ){
            $("#area").html(html);
        }
    }
});
</script>