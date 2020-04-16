<?php

include("App.class.php");
include("Model.class.php");
include("Controller.class.php");
include("Security.class.php");
include("permissions.inc");

include_once("../assets/libs/phpseclib1.0.18/Crypt/RSA.php");
include_once("../assets/libs/phpseclib1.0.18/Math/BigInteger.php");

class Api extends Controller  {

    // Obtiene todos los registros de una tabla
    public function allRegistries($table, $key) {

        $query = Controller::$connection->query("SELECT * FROM $table ORDER BY $key DESC");

        if($query) {
            $data = $query->fetchAll(PDO::FETCH_NUM);
        }

        header('Content-Type: application/json');
        echo json_encode($data);
    }

    // Obtiene un registro especifico de una tabla
    public function oneRegistry($table, $key, $cod) {

        $query = Controller::$connection->query("SELECT * FROM $table WHERE $key = '$cod' LIMIT 1");

        if($query) {
            $data = $query->fetchAll(PDO::FETCH_ASSOC);
        }

        header('Content-Type: application/json');
        echo json_encode($data);
    }


    // Crea un Registro nuevo
    public function create($table, $data) {

        if($table == "USER") {

            if(!$data["keyPrivate"] || !$data["keyPublic"] ) {

                $rsa = new Crypt_RSA();
                $RSAKeys = $rsa->createKey();

                $data["keyPrivate"] = $RSAKeys["privatekey"];

                $data["keyPublic"] = $RSAKeys["publickey"];

            }

        }

        $values = Controller::values($data);
        $query = Controller::$connection->query("INSERT INTO $table $values");

        header('Content-Type: application/json');

        if($query) {
            echo json_encode(["Inserted"]);
        } else {
            echo json_encode(["Not Inserted"]);
            print_r(Controller::$connection->errorInfo());
        }
    }


    // Actualiza un Registro
    public function update($table, $key, $cod, $data) {

        $setValues = Controller::updateValues($data);
        $query = Controller::$connection->query("UPDATE $table $setValues");

        header('Content-Type: application/json');

        if($query) {
            echo json_encode(["Updated"]);
        } else {
            echo json_encode(["Not Updated"]);
            print_r(Controller::$connection->errorInfo());
        }
    }

    // Elimina un Registro
    public function delete($table, $key, $cod) {

        $query = Controller::$connection->query("DELETE FROM $table WHERE $key = '$cod' LIMIT 1");

        header('Content-Type: application/json');

        if($query) {
            echo json_encode(["Deleted"]);
        } else {
            echo json_encode(["Not Deleted"]);
            print_r(Controller::$connection->errorInfo());
        }
    }

    // Registro Anterior
    public function prev($table, $key, $cod) {

        $query = Controller::$connection->query("SELECT * FROM $table WHERE $key < '$cod' ORDER BY $key DESC LIMIT 1");

        if($query) {
            $data = $query->fetchAll(PDO::FETCH_ASSOC);
        }

        header('Content-Type: application/json');
        echo json_encode($data);

    }

    // Registro Siguiente
    public function next($table, $key, $cod) {

        $query = Controller::$connection->query("SELECT * FROM $table WHERE $key > '$cod' ORDER BY $key ASC LIMIT 1");

        if($query) {
            $data = $query->fetchAll(PDO::FETCH_ASSOC);
        }

        header('Content-Type: application/json');
        echo json_encode($data);
    }

    // Login
    public function login($loginData) {

        if(Security::login($loginData)) {
            header('Content-Type: application/json');

            echo json_encode(["OK"]);
        } else {
            header('Content-Type: application/json');

            echo json_encode(["Error"]);
        }
    }

    // Logout
    public function logout() {

        if(Security::logout()) {

            header('Content-Type: application/json');
            echo json_encode(["OK"]);

        } else {

            header('Content-Type: application/json');
            echo json_encode(["Error"]);
        }
    }
    
    // Hacer PDF
    public function getPDF($template) {

       Controller::makePDF($template);

    }

    public function savePhoto() {

        if(isset($_POST['data']) && !isset($_POST['id'])) {

            header('Content-Type: application/json');

            $id = Controller::$connection->query('SELECT * FROM cliente ORDER BY idcliente DESC LIMIT 1');
            $id = $id->fetchAll(PDO::FETCH_ASSOC);

            $img = $_POST['data'];
            $img = str_replace('data:image/jpeg;base64,', '', $img);
            $img = str_replace(' ', '+', $img);
            $data = base64_decode($img);


            $file = "../assets/pictures/cliente/".$id[0]['idcliente'].".jpg";
            $success = file_put_contents($file, $data);

            echo json_encode("OK");
        }

        if(isset($_POST['id'])) {
        
            $id = $_POST['id'];
            $img = $_POST['data'];
        
            $img = str_replace('data:image/jpeg;base64,', '', $img);
            $img = str_replace(' ', '+', $img);
            $data = base64_decode($img);
        
        
            $file = "../assets/pictures/cliente/".$id.".jpg";
            $success = file_put_contents($file, $data);
        
            echo json_encode("OK");
        }
    }


    public function getChartDataAPI($data) {

        header('Content-Type: application/json');        
        
        $data =  Controller::$connection->query($data);
        $data =  $data->fetchAll(PDO::FETCH_NUM);
        $i = 0;

        echo json_encode($data, JSON_NUMERIC_CHECK);
    }

    public function sendMessage($data) {

        $idSender = $data["idUser"];

        $idReceiver = $data["idReceiver"];
        

        $queryUser = Controller::$connection->query("SELECT * FROM user WHERE idUser = $idReceiver");

        if($queryUser) {
            $dataUser = $queryUser->fetch(PDO::FETCH_ASSOC);
        }

        $rsa = new Crypt_RSA();

        $plaintext = $data["sendMessage"];

        $rsa->loadKey($dataUser["keyPublic"]);
        $ciphertext = $rsa->encrypt($plaintext);

        $queryMsg = "INSERT INTO message (idSender, idReceiver, message) VALUES ($idSender, $idReceiver, :data)";

        $stmt = Controller::$connection->prepare($queryMsg);

        $stmt->bindParam(':data', $ciphertext, PDO::PARAM_LOB);

        if(!$stmt->execute()) {
            print_r(Controller::$connection->errorInfo());
        }

        header('Content-Type: application/json'); 

        $out["encryptMessage"] = base64_encode($ciphertext);

        echo json_encode($out);

    }

    public function getMessage($data) {

        $idUser = $data["idUser"];

        if($idUser != 3) {

            $queryUser = Controller::$connection->query("SELECT * FROM user WHERE idUser = $idUser");

            $queryMsg = Controller::$connection->query("SELECT * FROM message WHERE idReceiver = $idUser ORDER BY idMessage DESC LIMIT 1");

        }
        else {

            $queryUser = Controller::$connection->query("SELECT * FROM user WHERE idUser = $idUser");

            $queryMsg = Controller::$connection->query("SELECT * FROM message ORDER BY idMessage DESC LIMIT 1");

        }


        if($queryMsg) {
            $dataMsg = $queryMsg->fetch(PDO::FETCH_ASSOC);
        }

        if($queryUser) {
            $dataUser = $queryUser->fetch(PDO::FETCH_ASSOC);
        }


        $rsa = new Crypt_RSA();

        error_reporting(0);

        $rsa->loadKey($dataUser["keyPrivate"]);
        $dataMsg["decryptMessage"] = $rsa->decrypt($dataMsg["message"]);

        $dataMsg["message"] = base64_encode($dataMsg["message"]);

        header('Content-Type: application/json');

        if($queryMsg->rowCount()) {

            echo json_encode($dataMsg);

        }
        
    }

}

if(isset($_POST["data"]) && isset($_GET["action"])) {
       
        $data = $_POST["data"];

        if(isset( $_POST["table"])) {

            $table = $_POST["table"];
            $key = $_POST["key"];
            $cod = $_POST["cod"];

        }

        $action = $_GET["action"];

        $template = "default";

        if(isset($_GET["template"]) && $_GET["template"] != 'undefined') {

                $template = $_GET["template"];
            }

        if(isset($_POST["data_detalle"]) && $_POST["data_detalle"] != 'undefined') {
                $data_detalle = $_POST["data_detalle"];
        }

            $request = new Api();

            switch ($action) {

                case 'all':

                    $request->allRegistries($table, $key);

                    break;
                case 'one':

                    $request->oneRegistry($table, $key, $cod);

                    break;
                case 'create':

                    $request->create($table, $data);

                    break;
                case 'update':

                    $request->update($table, $key, $cod, $data);

                    break;
                case 'delete':

                    $request->delete($table, $key, $cod);

                    break;
                case 'prev':

                    $request->prev($table, $key, $cod);

                    break;
                case 'next':

                    $request->next($table, $key, $cod);

                    break;
                case 'print':

                    $request->getPDF($template);

                    break;

                case 'login':

                    $request->login($data);

                    break;
                case 'logout':

                    $request->logout();

                break;
                case 'savePhoto':

                    $request->savePhoto($data);

                break;
                case 'getChartData':

                    $request->getChartDataAPI($data);

                break;
                case 'updatePic':

                    $request->savePhoto($data);

                break;
                case 'sendMessage':

                    $request->sendMessage($data);

                break;
                case 'getMessage':

                    $request->getMessage($data);

                break;

        }
}
