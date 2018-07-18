<?php
/**
 * Created by PhpStorm.
 * User: RSpro
 * Date: 22/05/16
 * Time: 15:31
 */


?>

<div class="panel panel-default" xmlns="http://www.w3.org/1999/html">

    <div class="panel-heading">
        <h3 class="panel-title"><span class="glyphicon glyphicon-signal" aria-hidden="true"></span>

            <strong>Reporte del Día</strong>

        </h3>

    </div>

    <div class="panel-collapse collapse in">

  <div class="panel-body">


      <div id="CLIENTE" class="panel panel-default">

    <div class="panel-heading">
        <h3 class="panel-title"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span>

            <a data-toggle="collapse" data-target="#CLIENTE-panel">
                <strong>Opciones de Reporte</strong>
            </a>

        </h3>

    </div>

    <div id="CLIENTE-panel" class="panel-collapse collapse in">

    <div class="panel-body">


    <div class="col-md-8">

        <div class="well">


    <div class="inputs_wrapper" style="max-height: inherit;">

            <div class="row">

                <div class="col-md-12">

                  <div class="input-group">
                    <span class="input-group-addon" id="basic-addon">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    </span>
                    <input id="fecha_dia" class="datepicker form-control" placeholder="FECHA" aria-describedby="basic-addon" type="text">
                </div>

                </div>

            </div>

        </div>

    </div>




    </div>

    <div class="col-md-4">

      <div class="form-group">

      <button id="print" template="reporte_diario" type="button" class="print btn btn-default btn-md btn-block">
          <span class="glyphicon glyphicon-print" aria-hidden="true"></span> Imprimir Reporte del Día
      </button>

      </div>

    </div>

  </div>

    </div>


  </div>




    </div>

    </div>


</div>

<div class="panel panel-default" xmlns="http://www.w3.org/1999/html">

<div class="panel-heading">
    <h3 class="panel-title"><span class="glyphicon glyphicon-signal" aria-hidden="true"></span>

        <strong>Reporte Mensual</strong>

    </h3>

</div>

<div class="panel-collapse collapse in">

<div class="panel-body">


  <div id="CLIENTE" class="panel panel-default">

<div class="panel-heading">
    <h3 class="panel-title"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span>

        <a data-toggle="collapse" data-target="#CLIENTE-panel">
            <strong>Opciones de Reporte</strong>
        </a>

    </h3>

</div>

<div id="CLIENTE-panel" class="panel-collapse collapse in">

<div class="panel-body">


<div class="col-md-8">

    <div class="well">


<div class="inputs_wrapper" style="max-height: inherit;">

        <div class="row">

            <div class="col-md-12">

              <div class="input-group">
                <span class="input-group-addon" id="basic-addon">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                </span>
                <input id="fecha_dia" class="datepicker form-control" placeholder="FECHA" aria-describedby="basic-addon" type="text">
            </div>

            </div>

        </div>

    </div>

</div>




</div>

<div class="col-md-4">

  <div class="form-group">

  <button id="print" template="rptmensual" type="button" class="print btn btn-default btn-md btn-block">
      <span class="glyphicon glyphicon-print" aria-hidden="true"></span> Imprimir Reporte Mensual
  </button>

  </div>

</div>

</div>

</div>


</div>




</div>

</div>


</div>

<div class="panel panel-default" xmlns="http://www.w3.org/1999/html">


    <div class="panel-heading">
        <h3 class="panel-title"><span class="glyphicon glyphicon-signal" aria-hidden="true"></span>

            <strong>Reporte Existencia de Productos</strong>

        </h3>

    </div>

<div class="panel-collapse collapse in">

  <div class="panel-body">


  <div class="col-md-8">

      <div class="well">


  <div class="inputs_wrapper" style="max-height: inherit;">

          <div class="row">

              <div class="col-md-12">

                <div class="input-group">
                  <span class="input-group-addon" id="basic-addon">
                      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                  </span>
                  <input id="fecha_carga" class="datepicker form-control" placeholder="FECHA" aria-describedby="basic-addon" type="text">
              </div>

              </div>

          </div>

      </div>

  </div>




  </div>

  <div class="col-md-4">

    <div class="form-group">

    <button id="print" template="RPTExistencia" type="button" class="print btn btn-default btn-md btn-block">
        <span class="glyphicon glyphicon-print" aria-hidden="true"></span> Imprimir Reporte de Existencia
    </button>

    </div>

  </div>

</div>

  </div>





  </div>


<div class="panel panel-default" xmlns="http://www.w3.org/1999/html">


<div class="panel-heading">
    <h3 class="panel-title"><span class="glyphicon glyphicon-signal" aria-hidden="true"></span>

        <strong>Reporte Ventas al Crédito</strong>

    </h3>

</div>

<div class="panel-collapse collapse in">

  <div class="panel-body">


  <div class="col-md-8">

      <div class="well">


  <div class="inputs_wrapper" style="max-height: inherit;">

          <div class="row">

              <div class="col-md-12">

                <div class="input-group">
                  <span class="input-group-addon" id="basic-addon">
                      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                  </span>
                  <input id="fecha_camion" class="datepicker form-control" placeholder="FECHA" aria-describedby="basic-addon" type="text">
              </div>

              </div>

          </div>

      </div>

  </div>




  </div>

  <div class="col-md-4">

    <div class="form-group">

    <button id="print" template="RPTVentaCredito" type="button" class="print btn btn-default btn-md btn-block">
        <span class="glyphicon glyphicon-print" aria-hidden="true"></span> Imprimir Reporte de Créditos
        </button>

    </div>

  </div>

</div>

  </div>


</div>




  </div>

</div>


</div>
