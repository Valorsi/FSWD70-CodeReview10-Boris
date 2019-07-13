

<?php require_once 'actions/db_connect.php'; ?> 

<!DOCTYPE html>
<html>
<head>
	<title>Flourish & Blotts</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<style>
		.logo{
			height: 100%;
			width: 10%;
			opacity: 0.8;
		}
		.nav {
			font-family: Chaparral Pro Light;
			font-size: 25px;
			color: black;
		}

		nav {
			background-color: rgba(255,255,255,0.8);
		}

		body {
			background-image: url("old.jpg");
		}

		.book {
			object-fit: contain;
			width: 100%;
			height: 50%;
		}
		
		.tabledetail {
			width: 10%;
		}

	</style>
	<meta charset='utf-8'>
</head>
<body>
<div class="container-fluid ">
	
	<nav class="navbar d-flex justify-content-center rounded-top">

		<img src="https://ih0.redbubble.net/image.484845815.0947/flat,550x550,075,f.u1.jpg" class="logo">

	</nav>

	<nav class="navbar d-flex justify-content-start  rounded-botttom">
		<a href='index.php' class="nav ml-5 mr-5">Home</a>
		<a href='index.php' class="nav ml-5 mr-5 ">Selection</a>
	</nav>
	

<div class ="manageUser mt-5 container-fluid rounded shadow">
   
   <table  border="1" cellspacing= "1" cellpadding="1" class="bg-white rounded table table-hover">
       <thead>
           <tr>
               <th>Title</th>
               <th >Author</th>
               <th>Publisher</th>
               <th >Publish Date</th>
               <th>Description </th>
               <th>Image </th>
               <th>Status</th>
               <th>ISBN</th>
           </tr>
       </thead>
       <tbody>
             <?php
           $sql = "SELECT * FROM media inner join publisher where fk_publisher = publisher_id";
           $result = $connect->query($sql);

            if($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                   echo  "<tr>
                       <td>" .$row['title']."</td>
                       <td>" .$row['author']."</td>
                       <td>" .$row['name']. " </td>
                       <td>" .$row['publish_date']."</td>
                       <td>" .$row['description']."</td>
                       <td class='tabledetail'> <img class='book' src="  .$row['image'].  "> </td>
                       <td>" .$row['status']."</td>
                       <td>" .$row['isbn']."</td>
                       <td>
                           <a href='update.php?id=" .$row['media_id']."'><button type='button' class='btn btn-secondary m-2'>Edit</button></a>
                           <a href='delete.php?id=" .$row['media_id']."'><button type='button' class='btn btn-danger m-2'>Delete</button></a>
                       </td>
                   </tr>" ;
               }
           } else  {
               echo  "<tr><td colspan='5'><center>No Data Avaliable</center></td></tr>";
           }
            ?>
       </tbody>
   </table>
   <div class="d-flex justify-content-center">
   <a href= "create.php"><button type="button " class="btn-lg shadow btn-success mb-5" >Add Book</button></a>
   </div>
</div>







</div>
</body>
</html>