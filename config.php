<?php 
// duong dan toi module trong admin
define("MODULES", $_SERVER['DOCUMENT_ROOT'] ."/admin/modules/");

// duong dan toi  layouts 
define("MAIN", $_SERVER['DOCUMENT_ROOT'] ."/admin/layouts/main/");

// duong dan upload 
define("UPLOADS", $_SERVER['DOCUMENT_ROOT'] ."/public/uploads/");


// config database
define("LOCALHOST","127.0.0.1");
define("USER","root");
define("PASS",""); 
define("PORT","3306");
define("DATABASE","webbanmaytinh");


// Config thông tin website

define("INFO_NAME","Tran Cung");
define("INFO_CLASS","KTPM03");
define("INFO_ADDRESS","");
define("INFO_PHONE","");
define("INFO_EMAIL","");

$arrayPrice = [
    '1-3' => [
        '1000000',
        '3000000'
    ],
    '3-5' =>[
        '3000000',
        '5000000'
    ],
    '5-7' =>[
        '5000000',
        '7000000'
    ],
    '7-10' => [
        '7000000',
        '10000000'
    ],
    '10-15' => [
        '10000000',
        '15000000'
    ],
    '15-20' => [
        '15000000',
        '20000000'
    ],
    '20' =>
    [
        '20000000'
    ]
];
