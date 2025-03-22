<!DOCTYPE html>
<html>
<head>
<style>
   table,
   th,
  td {
     padding: 10px;
     border: 1px solid black;
     border-collapse: collapse;
  }
</style>

<title>Catalogue WoodyToys</title>
</head>

<body>
<h1>Catalogue WoodyToys</h1>

<?php
$dbname = getenv('MARIADB_DATABASE');
$dbuser = getenv('MARIADB_USER');
$dbpass = trim(file_get_contents(getenv('DB_PASSWORD_FILE')));
$dbhost = getenv('MARIADB_HOST');
$connect = mysqli_connect($dbhost, $dbuser, $dbpass) or die("Unable to connect to '$dbhost'");
mysqli_select_db($connect,$dbname) or die("Could not open the database '$dbname'");
$result = mysqli_query($connect,"SELECT id, product_name, product_price FROM products");
?>

<table>
<tr>
 <th>Numéro de produit</th>
 <th>Descriptif</th>
 <th>Prix</th>
</tr>

<?
while ($row = mysqli_fetch_array($result)) {
  printf("<tr><th>%s</th> <th>%s</th> <th>%s</th></tr>", $row[0], $row[1],$row[2]);
}
?>

</table>
</body>
</html>
