<?php
/**
 * User: BCalderon
 * Date: 01/30/19
 * Time: 10:40
 */

 require_once("../assets/config.php");

?>
<?php include("../assets/layouts/header.php"); ?>

<div class="container">


    <div class="col-md-12"><?php

        View::showViewFromTable("USER", "Users", Array("photo" => false, "detail" => true), "table_user");

        ?></div>



</div>

<?php include("../assets/layouts/footer.php"); ?>
