<?php 

require_once 'actions/db_connect.php';

if ($_GET['id']) {
   $id = $_GET['id'];

   $sql = "SELECT * FROM media WHERE media_id = {$id}" ;
   $result = $connect->query($sql);

   $data = $result->fetch_assoc();

   $connect->close();

?>

<!DOCTYPE html>
<html>
<head>
   <title >Edit User</title>

   <style type= "text/css">
       fieldset {
           margin : auto;
           margin-top: 100px;
            width: 50%;
       }

       table  tr th {
           padding-top: 20px;
       }

       body {
      background-image: url("old.jpg");
    }
   </style>

</head>
<body>

<fieldset>
   <legend>Update Book</legend>

   <form action="actions/a_update.php"  method="post">
       <table cellspacing= "0" cellpadding="0">
           <tr>
               <th>Title</th>
               <td><input  type="text" name="title"  placeholder="Title" value="<?php echo $data['title'] ?>" /></td >
           </tr>     
           <tr>
               <th>Author</th>
               <td><input  type="text" name= "author" placeholder="Author" value="<?php echo $data['author'] ?>" /></td>
           </tr>
           <tr>
               <th>Publishing Date</th>
               <td><input type="date"  name="publish_date" placeholder ="Publishing Date" value="<?php echo $data['publish_date'] ?>"  /></td>
           </tr>
           <tr>
               <th>Description</th>
               <td><input  type="textarea" name="description"  placeholder="Description" value="<?php echo $data['description'] ?>" /></td>
           </tr>
           <tr>
               <th>Image URL</th>
               <td><input  type="text" name="image"  placeholder="Image URL" value="<?php echo $data['image'] ?>" /></td>
           </tr>
           <tr>
               <th>ISBN</th>
               <td><input  type="text" name="isbn"  placeholder="ISBN" value="<?php echo $data['isbn'] ?>" /></td >
           </tr>
           <tr>
               <input type= "hidden" name= "id" value= "<?php echo $data['media_id'] ?>" />
               <td><button type ="submit">Save Changes</button></td>
               <td ><a href= "index.php"><button  type="button">Back</ button></a></td>
           </tr>
       </table>
       </table>
   </form >

</fieldset >

</body >
</html >

<?php 
}
?>