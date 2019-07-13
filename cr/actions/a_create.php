
<?php 

require_once 'db_connect.php';

if ($_POST) {
   $title = $_POST['title'];
   $author = $_POST['author'];
   $publish_date = $_POST[ 'publish_date'];
   $desc = $_POST['description'];
   $image = $_POST['image'];
   $isbn = $_POST['isbn'];
   


   $sql = "INSERT INTO media (title, author, publish_date, description, image, isbn) VALUES ('$title', '$author', '$publish_date', '$desc', '$image', '$isbn')";
    if($connect->query($sql) === TRUE) {
       echo "<p>New Record Successfully Created</p>" ;
       echo "<a href='../create.php'><button type='button'>Back</button></a>";
        echo "<a href='../index.php'><button type='button'>Home</button></a>";
   } else  {
       echo "Error " . $sql . ' ' . $connect->connect_error;
   }

   $connect->close();
}