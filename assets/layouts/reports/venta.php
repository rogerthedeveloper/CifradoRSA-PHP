<?php

$data = $_POST["data"];


$table = $_POST["table"];

$key = $_POST["key"];

$cod = $_POST["cod"];

?>
<?php

setlocale(LC_TIME, "ES");


class NumberToLetterConverter {
  private $UNIDADES = array(
        '',
        'UNO ',
        'DOS ',
        'TRES ',
        'CUATRO ',
        'CINCO ',
        'SEIS ',
        'SIETE ',
        'OCHO ',
        'NUEVE ',
        'DIEZ ',
        'ONCE ',
        'DOCE ',
        'TRECE ',
        'CATORCE ',
        'QUINCE ',
        'DIECISEIS ',
        'DIECISIETE ',
        'DIECIOCHO ',
        'DIECINUEVE ',
        'VEINTE '
  );
  private $DECENAS = array(
        'VEINTI ',
        'TREINTA ',
        'CUARENTA ',
        'CINCUENTA ',
        'SESENTA ',
        'SETENTA ',
        'OCHENTA ',
        'NOVENTA ',
        'CIEN '
  );
  private $CENTENAS = array(
        'CIENTO ',
        'DOSCIENTOS ',
        'TRESCIENTOS ',
        'CUATROCIENTOS ',
        'QUINIENTOS ',
        'SEISCIENTOS ',
        'SETECIENTOS ',
        'OCHOCIENTOS ',
        'NOVECIENTOS '
  );
  private $MONEDAS = array(
    array('country' => 'Colombia', 'currency' => 'COP', 'singular' => 'PESO COLOMBIANO', 'plural' => 'PESOS COLOMBIANOS', 'symbol', '$'),
    array('country' => 'Estados Unidos', 'currency' => 'USD', 'singular' => 'DÓLAR', 'plural' => 'DÓLARES', 'symbol', 'US$'),
    array('country' => 'El Salvador', 'currency' => 'USD', 'singular' => 'DÓLAR', 'plural' => 'DÓLARES', 'symbol', 'US$'),
    array('country' => 'Europa', 'currency' => 'EUR', 'singular' => 'EURO', 'plural' => 'EUROS', 'symbol', '€'),
    array('country' => 'México', 'currency' => 'MXN', 'singular' => 'PESO MEXICANO', 'plural' => 'PESOS MEXICANOS', 'symbol', '$'),
    array('country' => 'Perú', 'currency' => 'PEN', 'singular' => 'NUEVO SOL', 'plural' => 'NUEVOS SOLES', 'symbol', 'S/'),
    array('country' => 'Reino Unido', 'currency' => 'GBP', 'singular' => 'LIBRA', 'plural' => 'LIBRAS', 'symbol', '£'),
    array('country' => 'Argentina', 'currency' => 'ARS', 'singular' => 'PESO', 'plural' => 'PESOS', 'symbol', '$')
  );
    private $separator = '.';
    private $decimal_mark = ',';
    private $glue = ' CON ';
    /**
     * Evalua si el número contiene separadores o decimales
     * formatea y ejecuta la función conversora
     * @param $number número a convertir
     * @param $miMoneda clave de la moneda
     * @return string completo
     */
    public function to_word($number, $miMoneda = null) {
        if (strpos($number, $this->decimal_mark) === FALSE) {
          $convertedNumber = array(
            $this->convertNumber($number, $miMoneda, 'entero')
          );
        } else {
          $number = explode($this->decimal_mark, str_replace($this->separator, '', trim($number)));
          $convertedNumber = array(
            $this->convertNumber($number[0], $miMoneda, 'entero'),
            $this->convertNumber($number[1], $miMoneda, 'decimal'),
          );
        }
        return implode($this->glue, array_filter($convertedNumber));
    }
    /**
     * Convierte número a letras
     * @param $number
     * @param $miMoneda
     * @param $type tipo de dígito (entero/decimal)
     * @return $converted string convertido
     */
    public function convertNumber($number, $miMoneda = null, $type) {

        $converted = '';
        if ($miMoneda !== null) {
            try {

                $moneda = array_filter($this->MONEDAS, function($m) use ($miMoneda) {
                    return ($m['currency'] == $miMoneda);
                });
                $moneda = array_values($moneda);
                if (count($moneda) <= 0) {
                    throw new Exception("Tipo de moneda inválido");
                    return;
                }
                ($number < 2 ? $moneda = $moneda[0]['singular'] : $moneda = $moneda[0]['plural']);
            } catch (Exception $e) {
                echo $e->getMessage();
                return;
            }
        }else{
            $moneda = '';
        }
        if (($number < 0) || ($number > 999999999)) {
            return false;
        }
        $numberStr = (string) $number;
        $numberStrFill = str_pad($numberStr, 9, '0', STR_PAD_LEFT);
        $millones = substr($numberStrFill, 0, 3);
        $miles = substr($numberStrFill, 3, 3);
        $cientos = substr($numberStrFill, 6);
        if (intval($millones) > 0) {
            if ($millones == '001') {
                $converted .= 'UN MILLON ';
            } else if (intval($millones) > 0) {
                $converted .= sprintf('%s MILLONES ', $this->convertGroup($millones));
            }
        }

        if (intval($miles) > 0) {
            if ($miles == '001') {
                $converted .= 'MIL ';
            } else if (intval($miles) > 0) {
                $converted .= sprintf('%s MIL ', $this->convertGroup($miles));
            }
        }
        if (intval($cientos) > 0) {
            if ($cientos == '001') {
                $converted .= 'UN ';
            } else if (intval($cientos) > 0) {
                $converted .= sprintf('%s', $this->convertGroup($cientos));
            }
        }
        $converted .= $moneda;
        return strtolower($converted);
    }
    /**
     * Define el tipo de representación decimal (centenas/millares/millones)
     * @param $n
     * @return $output
     */
    private function convertGroup($n) {
        $output = '';
        if ($n == '100') {
            $output = "CIEN ";
        } else if ($n[0] !== '0') {
            $output = $this->CENTENAS[$n[0] - 1];
        }
        $k = intval(substr($n,1));
        if ($k <= 20) {
            $output .= $this->UNIDADES[$k];
        } else {
            if(($k > 30) && ($n[2] !== '0')) {
                $output .= sprintf('%sY %s', $this->DECENAS[intval($n[1]) - 2], $this->UNIDADES[intval($n[2])]);
            } else {
                $output .= sprintf('%s%s', $this->DECENAS[intval($n[1]) - 2], $this->UNIDADES[intval($n[2])]);
            }
        }
        return $output;
    }
}


?>
<?php


$queryVenta = Controller::$connection->query("select *, p.nombre as nombre_producto, dv.cantidad as cantidad_venta, tp.nombre as nombreTipoVenta, c.nombre as nombreCliente from venta as v
inner join detalle_venta as dv on dv.idventa = v.idventa
inner join producto as p on p.idproducto = dv.idproducto
inner join cliente as c on c.idcliente = v.idcliente
inner join tipo_venta as tp on v.idtipo_venta = tp.idtipo_venta
where v.idventa = $cod");

if($queryVenta) {

    $dataVenta = $queryVenta->fetchAll(PDO::FETCH_ASSOC);

}



class MYPDF extends TCPDF {

    //Page header
    public function Header() {

        // get the current page break margin
        $bMargin = $this->getBreakMargin();
        // get current auto-page-break mode
        $auto_page_break = $this->AutoPageBreak;
        // disable auto-page-break
        $this->SetAutoPageBreak(false, 0);
        // set bacground image
        $img_file = '../assets/layouts/reports/images/report.jpg';
        $this->Image(null, 0, 0, 216, 356, '', '', '', false, 300, '', false, false, 0);
        // restore auto-page-break status
        $this->SetAutoPageBreak($auto_page_break, $bMargin);
        // set the starting point for the page content
        $this->setPageMark();
    }
}

// create new PDF document
$pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);



// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('');
$pdf->SetSubject('');

$pdf->SetPrintHeader(true);
$pdf->SetPrintFooter(true);

$pdf->SetMargins(18, 18, 18, true);


// add a page
$pdf->AddPage('L', 'HALF_LETTER');


// ---------------------------------------------------------

$h = new NumberToLetterConverter();



$idventa = $dataVenta[0]["idventa"];
$fecha = $dataVenta[0]["fecha"];
$idtipo_venta = $dataVenta[0]["idtipo_venta"];
$cliente = $dataVenta[0]["idcliente"];
$nombre_cliente = $dataVenta[0]["nombreCliente"];
$id_venta = $dataVenta[0]["idventa"];
$id_detalle_venta = $dataVenta[0]["id_detalle_venta"];
$idProducto = $dataVenta[0]["idproducto"];
$nombre_producto = $dataVenta[0]["nombre_producto"];
$cantidad_venta = $dataVenta[0]["cantidad_venta"];
$subtotal = $dataVenta[0]["subtotal"];
$total = $dataVenta[0]["total"];
$nombreTipoVenta = $dataVenta[0]["nombreTipoVenta"];



$detalle = "";

foreach($dataVenta as $key => $value) {

    if($value["cantidad_venta"] < 1) {

        $precioVenta / 100;
        $value["cantidad_venta"] =  $value["cantidad_venta"] * 100;

    }

    $precioVenta = sprintf("%.2f", $value["subtotal"] / $value["cantidad_venta"]);

    $detalle .= "<tr>

    <td>".$value["idproducto"]."</td>
    <td>".$value["nombre_producto"]."</td>
    <td>"."Q. ".$precioVenta."</td>
    <td>".$value["cantidad_venta"]."</td>
    <td>"."Q. ".$value["subtotal"]."</td>

    </tr>";
}



// define some HTML content with style
$html = <<<EOF

<style>

body{

    font-size: 18px;
}

h1 {

    font-size: 32px;
}

</style>

<html>
<head>
    <title> Venta </title>
</head>
<body>

    <div style="text-align:center; line-height: 1px;"><h1> Recibo de Venta </h1></div>
    <div style="text-align:center;"> ESPECIAS Y DESECHABLES EBEN EZER 2 </div>

    <div style="text-align:right; float:right"> <strong>Fecha:</strong> $fecha</div>
    <div> <strong>No. venta:</strong> $idventa </div>
    <div> <strong>Tipo de venta:</strong> $nombreTipoVenta</div>
    <div> <span style='display:inline; white-space:pre;'><strong>Código Cliente:</strong> $cliente  <strong>  Nombre:</strong> $nombre_cliente              </span></div>
    <br>
    <br>

    <table width="100%" border="1" align="center">

    <tr align='center'>
        <td><strong>Código</strong></td>
        <td><strong>Nombre Producto</strong></td>
        <td><strong>Precio</strong></td>
        <td><strong>Cantidad</strong></td>
        <td><strong>SubTotal</strong></td>
    </tr>



                $detalle


    </table>

    <br>
    <strong><div style="text-align:right; float:right"> <strong>Total: Q.</strong> $total</div> </strong>



</body>
</html>


EOF;



// output the HTML content
$pdf->writeHTML($html, true, false, true, false, '');

// reset pointer to the last page
$pdf->lastPage();

// ---------------------------------------------------------

//Close and output PDF document
$pdf->Output('Venta.pdf', 'I');

?>
