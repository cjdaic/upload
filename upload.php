<?php

/* Get the name of the uploaded file */
// $filename = $_FILES['file']['name'];
echo 'Success'; 
$filename = 'temp.pdb'
/* Choose where to save the uploaded file */
$location = "upload/".$filename;
/* $location = "./".$filename;

/* Save the uploaded file to the local filesystem */
if ( move_uploaded_file($_FILES['file']['tmp_name'], $location) ) { 
  echo 'Success'; 
} else { 
  echo 'Failure'; 
}

?>
