    <h1>List of all animals available for adoption:</h1>
    <table  id="customers">
	<tr>
	<th><strong>ID</strong></th>
	<th><strong>Name</strong></th>
	<th><strong>date Of Birth</strong></th>
	<th><strong>Description</strong></th>
	<th><strong>Images</strong></th>
	<th><strong></strong></th>
	</tr>
	
<?php
//$query = 'SELECT a.id, a.name, a.date_of_birth, a.description, t.type, v.boolean, g.gender ';
//$query = $query.'FROM animal a, animal_requests ar, animal_type t, vaccinated v, gender g ';
//$query = $query.'WHERE a.id = ar.id_animal AND a.availability = 0 AND g.id = a.gender AND v.id = a.vaccinated AND t.id = a.type AND ar.staff_answer = 0';// AND a.id NOT IN (SELECT id_animal FROM animal_requests WHERE id_user='.$current_user_id.')';
//echo '<hr>'.$query.'<hr>';
//$rows = $db->query($query); 


$rows = $db->query("SELECT * FROM animal where availability=0 AND id NOT IN (SELECT id_animal FROM animal_requests WHERE id_user=".$_SESSION['views'].")"); 

foreach ($rows as $row) 
{ 
$MYid = $row["id"];
?> 
	<tr>
	<td><?= $row["id"] ?></td>
	<td><?= $row["name"] ?></td>
	<td><?= $row["date_of_birth"] ?></td>
	<td><?= $row["description"] ?></td>
	<td>
<?php	
$query1 = 'SELECT filename FROM animal_pictures WHERE id_animal = '.$row["id"];

$rows1 = $db->query($query1); 

foreach ($rows1 as $row1) 
{ 

?> 
	<img width = '50' alt = '<?= $row1["filename"] ?>' src = '../uploads/<?= $row1["filename"] ?>'>

<?php 
}	
?> 
	</td>
	<td><a href="request_adoption.php?id=<?= $row['id'] ?>">Request</a></td>


	</tr>

<?php 
}

?>	
		</table>