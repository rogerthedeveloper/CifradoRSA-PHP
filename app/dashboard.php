<?php

    /**
     * Created by PhpStorm.
     * User: RSpro
     * Date: 22/05/16
     * Time: 13:59
     */

    require_once("../assets/config.php");

?>

<?php include("../assets/layouts/header.php"); 

try {

    $users = Controller::$connection->query("SELECT * FROM user order by idUser DESC");

    if ($users) {

        $users = $users->fetchAll(PDO::FETCH_ASSOC);
    }

} catch (mysqli_sql_exception $e) {

    echo $e->getMessage();

}


?>

<script type="text/javascript">
    

$(document).ready(function() {

$("select#usuarios").select2({ data:[


<?php foreach ($users as $key => $value): ?>

        {
            id: '<?php echo $value["idUser"]; ?>',
            text: '<?php echo $value["nombre"]; ?>'
        },


<?php endforeach; ?>


],

    minimumInputLength: 0

});


})

</script>


<div class="container">

    <div class="col-md-12">


        <div class="panel panel-default">

            <div class="panel-heading">
                <h3 class="panel-title"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>

                    <strong>Mensajes: <?php echo Security::$username; ?></strong>

                </h3>

            </div>

            <div class="panel-collapse">

                <div class="panel-body">

                    <div class="col-md-12">

                        <div id="transmition_wrapper" style="border: 1px solid lightgray; padding: 15px; height: 300px; overflow-x: hidden; overflow-y: auto;">


                        </div>
                          
                        <?php if(Security::$permission == 1 || Security::$permission == 2): ?>    
                            <div class="well">  

                            <select id="usuarios" class="form-control" aria-describedby="basic-addon">
                                <option value="nothing">Selecciona un Usuario</option>
                            </select>  
                            <br>
                            <br>
                            <div class="input-group">
                            <textarea id="messageInput" style="resize: none;" placeholder="Escribe un Mensaje..." class="form-control" rows="3"></textarea>
                              <span class="input-group-btn">
                                <button onclick="sendMessage()" style="height: 74px;" class="btn btn-success" type="button">Enviar</button>
                              </span>
                            </div>      
                            </div>
                        <?php endif; ?>    

                    </div>
  
                </div>


            </div>

        </div>

    </div>

</div>

<script>


function sendMessage() {

    if(usuarios.value == "nothing") {

        alert("Selecciona un Usuario para enviarle el mensaje");
        return false;
    }

    var tmpMessage = messageInput.value;

    messageInput.value = "";

    var idUser = <?php echo Security::$userID; ?>

    $.ajax({

        url: "../classes/Api.php?action=sendMessage",
        method: "POST",
        data: { "data": {"sendMessage": tmpMessage, "idUser": idUser, "idReceiver": usuarios.value }, "table": "message", "key": "a", "cod": 1 },
        dataType: "JSON",
        success: function(r) {

            if(r) {

                msgEnviado = `<div style="width: 80%; float: right;" class="alert alert-success text-right" role="alert">
                <span style="font-weight: bold;">Mensaje Enviado:</span>
                <span class="innerTextPlain">${tmpMessage}</span>
                <br>
                <br>
                <span style="font-weight: bold;">Mensaje Enviado Cifrado: </span>
                <span class="innerTextEncrypt">${r.encryptMessage}</span>
                </div>`;


                $("#transmition_wrapper").append(msgEnviado);
                

                $("#transmition_wrapper")
                .animate({"scrollTop": $("#transmition_wrapper")[0].scrollHeight}, 1000);

            }

        }

    });

}

var lastMessage = "";

function getMessage() {

    var idUser = <?php echo Security::$userID; ?>

    $.ajax({

        url: "../classes/Api.php?action=getMessage",
        method: "POST",
        data: { "data": {"idUser": idUser}, "table": "message", "key": "a", "cod": 1 },
        dataType: "JSON",
        success: function(r) {

            if(r) {

                if(r.idMessage != lastMessage) {

                    msgRecibido = `<div style="width: 80%; float: left;" class="alert alert-info" role="alert">
                    <span style="font-weight: bold;">Mensaje Recibido Descifrado:</span>
                    <span class="innerTextPlain">${r.decryptMessage}</span>
                    <br>
                    <br>
                    <span style="font-weight: bold;">Mensaje Recibido Cifrado:</span>
                    <span class="innerTextEncrypt">${r.message}</span>
                    </div>`;


                    $("#transmition_wrapper")
                    .append(msgRecibido);

                    $("#transmition_wrapper")
                    .animate({"scrollTop": $("#transmition_wrapper")[0].scrollHeight}, 500);

                    lastMessage = r.idMessage;

                }

            }

        }

    });

}

setInterval(() => getMessage(), 1000);

</script>

<?php include("../assets/layouts/footer.php"); ?>
