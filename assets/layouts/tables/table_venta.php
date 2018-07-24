<?php
/**
 * Created by PhpStorm.
 * User: RSpro
 * Date: 22/05/16
 * Time: 15:31
 */

/* Form Construct Data */

try {

    $fields = Controller::$connection->query("DESC $table_name");

    if($fields) {

        $fields = $fields->fetchAll(PDO::FETCH_NUM);
    }



}


catch(mysqli_sql_exception $e) {

    echo $e->getMessage();

}



try {


    $registries = Controller::$connection->query("SELECT * FROM $table_name");

    if($registries) {

    $registries = $registries->fetchAll(PDO::FETCH_NUM);

    }
}

catch(mysqli_sql_exception $e) {

    echo $e->getMessage();

}


try {


    $productos = Controller::$connection->query("SELECT * FROM producto  order by preciocosto DESC");

    if($productos) {

        $productos = $productos->fetchAll(PDO::FETCH_NUM);

    }
}


catch(mysqli_sql_exception $e) {

    echo $e->getMessage();

}

/* End Form Construct Data */


?>

<div id="<?php echo $table_name; ?>" class="panel panel-default">

    <div class="panel-heading">
        <h3 class="panel-title"><span class="glyphicon glyphicon-search" aria-hidden="true"></span>

            <a data-toggle="collapse" data-target="#<?php echo $table_name."-panel"; ?>">
                <strong><?php echo $table_title; ?></strong>
            </a>

        </h3>

    </div>

    <div id="<?php echo $table_name."-panel"; ?>" class="panel-collapse collapse in">

    <div class="panel-body">


    <div class="col-md-<?php if($options["photo"] == true) { echo "8"; } else { echo "12"; } ?>">

        <div class="well">


            <div class="inputs_wrapper" style="max-height: inherit;">


            <?php if($fields): ?>

            <?php $counter = 0; foreach($fields as $key => $value): ?>



               <?php if($value[3] == "MUL"): ?>


        <div class="form-group">

            <div class="input-group">
                <span class="input-group-addon" id="basic-addon">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    </span>

                <select id="<?php echo $value[0]; ?>" class="form-control" aria-describedby="basic-addon">

                    <option value="nothing"><?php echo strtoupper($value[0]); ?></option>

                </select>

            </div>

        </div>

        <script>


            $(document).ready(function() {


              $("button.nextVenta").on("click", function()    {


                  var control = this;

                  var fields = $(this).closest(".panel").find("input").first().val();

                  var form = $(control).closest(".panel");


                  var table = $(this).closest(".panel").attr("id");

                  var key = $(this).closest(".panel").find("input").first().attr("id");

                  var cod = $(this).closest(".panel").find("input").first().val();



                  $.ajax({


                      url: "../classes/Api.php?action=nextVenta",
                      method: "POST",
                      data: { "data": fields, "table": table, "key": key, "cod": cod },
                      dataType: "JSON",
                      success: function(r) {


                          if(r != "") {

                              switchUDVenta(control, true);
                              refreshDetailVenta(form);

                          }

                          $(".detalle_venta_table").DataTable().clear().draw();

                          $(".detalle_venta_table").DataTable().rows.add(r[1]).draw();


                          $.each(r[0][0], function(key, value) {


                              $(form).find("#"+key).val(value);

                              if($(form).find("#"+key).data("select2")) {

                                  $(form).find("#"+key).select2("trigger", "select", {
                                      data: { id: value }
                                  });

                              }


                          });



                      }


                  });



              });


              $("button.prevVenta").on("click", function()    {

                  var control = this;

                  var fields = $(this).closest(".panel").find("input").first().val();

                  var form = $(control).closest(".panel");


                  var table = $(this).closest(".panel").attr("id");

                  var key = $(this).closest(".panel").find("input").first().attr("id");

                  var cod = $(this).closest(".panel").find("input").first().val();


                  $.ajax({

                      url: "../classes/Api.php?action=prevVenta",
                      method: "POST",
                      data: { "data": fields, "table": table, "key": key, "cod": cod },
                      dataType: "JSON",
                      success: function(r) {

                          if(r != "") {

                              switchUDVenta(control, true);
                              refreshDetailVenta(control);

                          }

                          $(".detalle_venta_table").DataTable().clear().draw();

                          $(".detalle_venta_table").DataTable().rows.add(r[1]).draw()


                          $.each(r[0][0], function(key, value) {

                              $(form).find("#"+key).val(value);

                              if($(form).find("#"+key).data("select2")) {

                                  $(form).find("#"+key).select2("trigger", "select", {
                                      data: { id: value }
                                  });

                              }

                          });

                      }


                  });



              });


              $("button.newVenta").on("click", function()     {


                  var control = this;

                  var form = $(control).closest(".panel");

                  $("#cantidadCtn").val(0);

                  $("#descuentoCtn").val(0);

                  $('#precioMayorista').removeAttr("checked");


                  $(this).closest(".panel").find(".inputs_wrapper").find("input, textarea").val("");

                   $(".detalle_venta_table").DataTable().clear().draw();


                   $("select#IDCLIENTE").select2("trigger", "select", {
                       data: { id: "nothing" }
                   });

                   $("select#IDTIPO_VENTA").select2("trigger", "select", {
                       data: { id: "nothing" }
                   });

                   $("select#producto").select2("trigger", "select", {
                       data: { id: "nothing" }
                   });


                   total = 0;




                  switchUDVenta(control, false);
                  refreshDetailVenta(form);



              });


                $("select#<?php echo $value[0]; ?>").select2({ data:[


                    <?php $FK_table = Controller::$connection->query("SELECT referenced_table_name as table_name
                  from information_schema.referential_constraints
                  where table_name = '$table_name'");

                    $FK_table = $FK_table->fetchAll(PDO::FETCH_NUM); ?>

                    <?php $FKData = Controller::$connection->query("SELECT * FROM ".$FK_table[$counter][0]);


                    $FKData = $FKData->fetchAll(PDO::FETCH_NUM); ?>



                <?php foreach($FKData as $key => $value): ?>

                        {
                            id: '<?php echo $value[0]; ?>',
                            text: '<?php if(isset($value[0])) {echo $value[0];} ?><?php if(isset($value[1])) {echo " - ".$value[1];} ?><?php if(isset($value[2])) {echo " - ".$value[2];} ?>'
                        },



                <?php endforeach; ?>

                ],


                    minimumInputLength: 1


                })

            });


        </script>


                <?php $counter++; else: ?>

        <div class="form-group">

            <div class="input-group">
                <span class="input-group-addon" id="basic-addon">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                </span>
                <input id="<?php echo $value[0]; ?>" type="text" class="<?php if($value[1] == "date") { echo "datepicker"; } ?> form-control" placeholder="<?php echo strtoupper($value[0]); ?>" aria-describedby="basic-addon" <?php if($value[5] == "auto_increment") { echo "disabled"; } ?>>
            </div>

        </div>


        <?php endif; ?>


            <?php endforeach; ?>

                <?php else: ?>

                 <div style="font-size: 16px;"><center>Error: tabla especificada no existe en la base de datos.</center></div>

                <?php endif; ?>


            </div>

            <br>



                <div style="text-align: center;">

                    <button id="new" type="button" class="newVenta btn btn-success btn-md">
                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nuevo
                    </button>

                     <button id="create" type="button" class="hacerVenta btn btn-primary btn-md btn-md" disabled>
                        <span class="glyphicon glyphicon-save" aria-hidden="true"></span> Hacer Venta
                    </button>

                    <!-- <button id="delete" type="button" class="deleteVenta btn btn-danger btn-md" disabled>
                        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Borrar
                    </button> -->

                    <button id="prev" type="button" class="prevVenta btn btn-warning btn-md">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> Anterior
                    </button>

                    <button id="next" type="button" class="nextVenta btn btn-warning btn-md">
                        Siguiente <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    </button>

                    <button id="print" template="venta" type="button" class="print btn btn-default btn-md" disabled>
                        <span class="glyphicon glyphicon-print" aria-hidden="true"></span> Imprimir Recibo
                    </button>

                </div>


        </div>


    </div>

        <?php if($options["photo"] == true): ?>

            <div class="col-md-4">

                <div class="well">

                    <div style="text-align: center;">

                    <img class="form_image" src="../assets/img/no_pic.jpg">

                        <br>

                        <button style="margin-top: 10px;" type="button" class="update-pic btn btn-info btn-md" disabled>
                            <span class="glyphicon glyphicon-refresh" aria-hidden="true"></span> Actualizar
                        </button>

                    </div>


                </div>


            </div>

        <?php endif; ?>

    <div class="col-md-7">

            <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> <b>Detalle de la Venta</b>


            <div class="well">


                <div class="col-md-8">


                <select id="producto" class="form-control" aria-describedby="basic-addon">

                    <option value="nothing">Selecciona un Producto</option>

                </select>

                <div class="existencia-cantidad">Existencia: <span>Seleccionar Producto</span></div>


            </div>

            <div class="col-md-4">


                <div class="form-group">

                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        </span>

                        <script type="text/javascript">

                            function enableAdd(cantidad) {


                                if($("select#producto").val() != 0 && $(cantidad).val() > 0) {

                                    $("#add").removeAttr("disabled");


                                }
                                else {

                                    $("#add").attr("disabled", true);

                                }

                            }


                        </script>


                        <input id="cantidadCtn" min="0" type="number" value="0" class="form-control" placeholder="CANTIDAD" aria-describedby="basic-addon" onchange="enableAdd(this)">

                    </div>

                </div>

                <div>

                <input value="1" name="unidadVenta" type="radio" checked>
                <label for="unidadVenta">
                    Unidad
                </label>
                </div>

                <div>

                  <input value="0.01" name="unidadVenta" type="radio">
                  <label for="unidadVenta">
                      Libra
                  </label>
                </div>
                

            </div>

                <br>

                <br>


                <script>


                $('#total').attr('disabled', 'disabled'); //Disable


                    $(document).ready(function() {

                        $("select#producto").select2({ data:[


                        <?php foreach($productos as $key => $value): ?>

                                {
                                    id: '<?php echo $value[0]; ?>',
                                    text: '<?php if(isset($value[1])) {echo $value[1];} ?><?php if(isset($value[3])) {echo " - Menor Q. ".$value[3];} ?><?php if(isset($value[4])) {echo " - Mayor Q. ".$value[4];} ?>'
                                },


                        <?php endforeach; ?>


                        ],


                            minimumInputLength: 0


                        });



                    })

                </script>

            <center>

              <div class="col-md-7">

                <div class="checkbox checkbox-info checkbox-circle">
                  <input id="precioMayorista" type="checkbox">
                  <label for="precioMayorista">
                      Precio Mayorista
                  </label>
                </div>


              </div>
              <div class="col-md-5">

                  <div class="form-group ">

                  <label for="Descuento">Descuento Por Unidad</label>

                      <div class="input-group">
                          <span class="input-group-addon" id="basic-addon">
                              <span aria-hidden="true"><strong>Q</strong></span>
                          </span>

                  <input id="descuentoCtn" min="0" type="text" value="0" class="form-control" placeholder="DESCUENTO C/U" aria-describedby="basic-addon">

                </div>
              </div>

              </div>

                <button id="add" type="button" class="btn btn-success btn-md" disabled>
                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Añadir
                    </button>


                <button id="remove" type="button" class="btn btn-danger btn-md" disabled>
                    <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> Quitar
                </button>

            </center>

            <table id="" class="detalle_venta_table display" cellspacing="0" width="100%">
                <thead>
                <tr>

                        <th>ID PRODUCTO</th>
                        <th>PRODUCTO</th>
                        <th>CANTIDAD</th>
                        <th>PRECIO</th>
                        <th>SUBTOTAL</th>

                </tr>
                </thead>

                <tbody>




                </tbody>



            </table>

                </div>

        </div>



    <?php if($options["detail"] == true): ?>


        <div class="col-md-5">

            <span class="glyphicon glyphicon-usd" aria-hidden="true"></span> <b>Registro de Ventas</b>

            <div class="well">


            <table id="<?php echo $table_name; ?>" class="detail_table_venta display" cellspacing="0" width="100%">
                <thead>
                <tr>

                        <th>idventa</th>
                        <th>Fecha</th>
                        <th>Cód.Cliente</th>
                        <th>Tipo de Venta</th>
                        <th>Total</th>

                </tr>
                </thead>

                <tbody>


                <?php foreach($registries as $key => $value): ?>
                <tr>


                    <?php foreach($value as $key => $value): ?>
                        <td><?php echo $value; ?></td>
                    <?php endforeach; ?>



                </tr>
                <?php endforeach; ?>



                </tbody>


            </table>

                </div>

        </div>

        <?php endif; ?>


    </div>



    </div>

</div>

        <script type="text/javascript">


                    var total = 0.00;


                    $("#remove").on('click', function() {


                        r = detalle_venta_table.rows({ selected: true }).data();

                        console.log(r[0]);

                        

                        total = total - parseFloat(r[0][4]);

            
                        $(".inputs_wrapper").find("#total").val(parseFloat(total).toFixed(2));


                        detalle_venta_table.row('.selected').remove().draw(false);

                        $("#remove").attr("disabled", true);



                    });


                    $('.detalle_venta_table tbody').on( 'click', 'tr', function () {

                            $("#remove").attr("disabled", false);

                    });

                    $("select#producto").on("change", function(e) {

        

                       $.ajax({

                            url: "../classes/Api.php?action=askExistencia",
                            method: "POST",
                            data: { "data": {"id_producto": this.value}, "table": "producto", "key": "idproducto", "cod": this.value},
                            dataType: "JSON",
                            success: function(r) {

                                if(r[0]) {

                                $(".existencia-cantidad span").html(r[0].cantidad);

                                }
                                else {

                                    $(".existencia-cantidad span").html("Seleccionar Producto");

                                }

                            }


                        });

                    });


                    $("#add").on('click', function() {



                        $(".hacerVenta").attr("disabled", false);


                        $("#add").attr("disabled", true);
                        


                        cant = $("#cantidadCtn").val() * $("input[name=unidadVenta]:checked").val();


                        descuento = $("#descuentoCtn").val();
            


                        if($('#precioMayorista').is(":checked"))  {

                              precioMayorista = 1;

                          }
                          else {

                              precioMayorista = 0;

                          }


                        $("#cantidadCtn").val(0);

                        $("#descuentoCtn").val(0);

                        $('#precioMayorista').removeAttr("checked");


                        id = $("select#producto").val();


                        $("select#producto").select2("trigger", "select", {

                            data: { id: "nothing" }

                        });



                          $.ajax({

                            url: "../classes/Api.php?action=addItemVenta",
                            method: "POST",
                            data: { "data": {"cantidad": cant, "descuento": descuento, "precioMayorista": precioMayorista}, "table": "producto", "key": "idproducto", "cod": id},
                            dataType: "JSON",
                            success: function(r) {

                              if(r != "error_descuento") {

                                  console.log(r);
                                  
                                  total = total + parseFloat(r[0][4]);

                                  $(".inputs_wrapper").find("#total").val(parseFloat(total).toFixed(2));

                                  $(".detalle_venta_table").DataTable().rows.add(r).draw();

                                  $("#remove").attr("disabled", true);


                              }
                              else {


                                swal({
                                  title: 'Descuento de Producto',
                                  text: "Error, el descuento que aplicaste supera al precio del producto.",
                                  type: 'error',
                                  confirmButtonColor: '#3085d6',
                                  confirmButtonText: 'Aceptar'
                                });


                              }




                            }


                        });



                    });




                    table_details_venta = $('.detail_table_venta').DataTable({

                        responsive: true,
                        dom: 'Bfrtlip',
                        order: [ 0, "desc" ],
                        buttons: [
                            {
                                extend: 'pdfHtml5',
                                title: ''
                            },
                            {
                                extend: 'excelHtml5',
                                title: ''
                            },
                            {
                                extend: 'print',
                                title: '',
                                customize: function ( win ) {

                                    $(win.document.body).css('background', 'none');

                                }
                            },
                            {
                                extend: 'copyHtml5',
                                title: ''
                            }
                        ],
                        select: true,
                        pageLength: 10,
                        scrollY:    150,
                        oLanguage:  {
                            "sUrl": "../assets/libs/datatables/Spanish.json"
                        }

                    });




                    $('.detail_table_venta tbody').on( 'click', 'tr', function () {

                      $("#create").attr("disabled", true);


                        if ( $(this).hasClass('selected') ) {


                                var control = $(this).closest('.panel').find('.newVenta');

                                var form = $(control).closest(".panel");


                                var table = $(this).closest(".detail_table_venta").attr("id");

                                var key = $(this).closest(".detail_table_venta").find("th").first().text();

                                var cod = table_details_venta.row(this).data()[0];



                            $.ajax({

                                url: "../classes/Api.php?action=oneVenta",
                                method: "POST",
                                data: { "data": cod, "table": table, "key": key, "cod": cod },
                                dataType: "JSON",
                                success: function(r) {


                                    if(r != "") {

                                        switchUDVenta(control, true);

                                    }

                                    $.each(r[0][0], function(key, value) {


                                        $(form).find("#"+key).val(value);


                                        if($(form).find("#"+key).data("select2")) {

                                            $(form).find("#"+key).select2("trigger", "select", {
                                                data: { id: value }
                                            });

                                        }



                                    });


                                    if(r[1]) {

                                         $(".detalle_venta_table").DataTable().clear().draw();


                                        $(".detalle_venta_table").DataTable().rows.add(r[1]).draw();


                                    }

                                }


                            });



                        }


                    } );




                </script>
