<?php
/**
 * Created by PhpStorm.
 * User: BCalderon
 * Date: 01/30/19
 * Time: 10:44
 */

 require_once("../assets/config.php");

?>
<?php include("../assets/layouts/header.php"); ?>

<div class="container">


    <div class="col-md-12"><?php

        View::showViewFromTable("TIPOVENTA", "Tipo de Venta", Array("photo" => false, "detail" => true));

        ?></div>



</div>

<?php include("../assets/layouts/footer.php"); ?>
