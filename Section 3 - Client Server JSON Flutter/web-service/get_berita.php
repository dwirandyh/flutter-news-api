<?php
include "conn.php";

$queryResult = $connect->query("select * from tb_news_olahraga");
$result = array();
while ($fetchData = $queryResult->fetch_assoc()) {
    $result[] = $fetchData;
}

echo json_encode($result);
