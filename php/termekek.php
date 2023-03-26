<?php

try {
  $mysqli = new mysqli("localhost", "root", "", "termekek");
  $mysqli->set_charset("utf8mb4");
  $result = $mysqli->query("SELECT * FROM termekek");
  $rows   = $result->fetch_all(MYSQLI_ASSOC);
  $mysqli->close();
  echo json_encode($rows);
} catch (Exception $e) {
  echo "Hiba van!";
  exit(1);
}
