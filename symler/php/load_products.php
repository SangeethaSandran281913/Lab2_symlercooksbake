<?php

include_once("dbconnect.php");
$product_name= $_POST['pr_name'];

if ($product_name == "all") {
    $sqlload = "SELECT * FROM tbl_products ORDER BY pr_id DESC";
} 
else if($product_name == "null"){
    echo("null");
}
else {
    $sqlload = "SELECT * FROM tbl_products WHERE pr_name LIKE '%$pr_name%' ORDER BY pr_id DESC";
} 

$result = $conn->query($sqlload);

if ($result->num_rows > 0){
    $response["products"] = array();
    while ($row = $result -> fetch_assoc()){
        $prlist = array();
        $prlist[pr_id] = $row['pr_id'];
        $prlist[pr_name] = $row['pr_name'];
        $prlist[pr_price] = $row['pr_price'];
        $prlist[pr_categ] = $row['pr_categ'];
        $prlist[pr_desc] = $row['pr_desc'];
        $prlist[pr_rating] = $row['pr_rating'];
        $prlist[date_created] = $row['date_created'];
        array_push($response["products"],$prlist);
    }
    echo json_encode($response);
}else{
    echo "nodata";
}
?>