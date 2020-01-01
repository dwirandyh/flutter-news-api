<?php
$connect = new mysqli("localhost", "user", "user", "db_news_sport");

if (!$connect) {
    echo "Connection Failed";
    exit();
}
