<html>
<head>
   <title>Flourish & Blotts</title>

   <style type= "text/css">
       fieldset {
           margin: auto;
            margin-top: 100px;
           width: 50% ;
       }

       table tr th  {
           padding-top: 20px;
       }

       body {
        background-image: url(old.jpg);
       }
   </style>

</head>
<body>

<fieldset>
   <legend>Add Book</legend>

   <form  action="actions/a_create.php" method= "post" class="bg-wh">
       <table cellspacing= "0" cellpadding="0" class="bg-white">
           <tr>
               <th>Title</th>
               <td><input  type="text" name="title"  placeholder="Title" /></td >
           </tr>     
           <tr>
               <th>Author</th>
               <td><input  type="text" name= "author" placeholder="Author" /></td>
           </tr>
           <tr>
               <th>Publishing Date</th>
               <td><input type="date"  name="publish_date" placeholder ="Publishing Date" /></td>
           </tr>
           <tr>
               <th>Description</th>
               <td><input  type="textarea" name="description"  placeholder="Description" /></td>
           </tr>
           <tr>
               <th>Image URL</th>
               <td><input  type="text" name="image"  placeholder="Image URL" /></td>
           </tr>
           <tr>
               <th>ISBN</th>
               <td><input  type="text" name="isbn"  placeholder="ISBN" /></td >
           </tr>
           <tr>
               <td><button type ="submit">Insert Book</button></td>
               <td ><a href= "index.php"><button  type="button">Back</ button></a></td>
           </tr>
       </table>
   </form>

</fieldset>

</body>
</html>