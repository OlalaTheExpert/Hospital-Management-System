<?php
include('include/config.php');
if (!empty($_POST["specilizationid"])) {

  $sql = ("select doctorName,id from doctors where specilization='" . $_POST['specilizationid'] . "'"); 
  $result = mysqli_query($conn, $sql);
  
  ?>
  <option selected="selected">Select Doctor </option>
  <?php
  while ($row = mysqli_fetch_array($result)) { ?>
    <option value="<?php echo htmlentities($row['id']); ?>"><?php echo htmlentities($row['doctorName']); ?></option>
  <?php
  }
}


if (!empty($_POST["doctor"])) {

  $sql = ("select docFees from doctors where id='" . $_POST['doctor'] . "'");
  $result = mysqli_query($conn, $sql);
  while ($row = mysqli_fetch_array($result)) { ?>
    <option value="<?php echo htmlentities($row['docFees']); ?>"><?php echo htmlentities($row['docFees']); ?></option>
<?php
  }
}

?>