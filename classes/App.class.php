<?php

class App {

    static $connection;

    public function __construct()   {


       App::$connection = new PDO("mysql:host=localhost;dbname=cifrado;charset=utf8", "root", "root",[]);


    }

    private static function status() {

        if(App::$connection) {

        echo "Connected!";

        } else {

            echo "Not Connected!";
        }
    }
}

new App();

