<?php

include "config.php";


$sql_command = "SELECT * FROM player";
$result =  mysqli_query($db, $sql_command);

while ($rows = mysqli_fetch_assoc($result))
{
    $play_id = $rows['play_id'];
    $name = $rows['name'];
    $surname = $rows['surname'];
    $suplay_coin = $rows['suplay_coin'];
    $birth_date = $rows['birth_date'];
    $email = $rows['email'];
    $phone_number = $rows['phone_number'];
    $region = $rows['region'];
    echo $play_id . " " . $name . " " . $surname . " " . $suplay_coin . " " . $birth_date . " " . $email . " " . $phone_number . " " . $region;
}

?>

<form>
<div class="form-group">
<label for="inputName">Name</label>
<input name="user_name" type="text" class="form-control" id="inputName" placeholder="Enter name of the user">
</div>
<div class="form-group">
<label for="inputSurname">Surname</label>
<input name="user_surname" type="text" class="form-control" id="inputSurname" placeholder="Enter surname of the user">
</div>
<div class="form-group">
<label for="inputSuCoin">SuPlay coin</label>
<input name="user_coin" type="number" class="form-control" id="inputSuCoin" placeholder="Enter suplay coin of the user">
</div>
<div class="form-group">
<label for="inputBirthDate">Birth date</label>
<input name="user_birthdate" type="date" class="form-control" id="inputBirthDate" placeholder="Enter birthdate of the user">
</div>
<div class="form-group">
<label for="inputEmail">Email</label>
<input name="user_email" type="email" class="form-control" id="inputEmail" placeholder="Enter email of the user">
</div>
<div class="form-group">
<label for="inputPhonenumber">Phone number</label>
<input name="user_phonenumber" type="text" class="form-control" id="inputPhonenumber" placeholder="Enter phone number of the user">
</div>
<div class="form-group">
<label for="inputRegion">Region</label>
<input name="user_region" type="text" class="form-control" id="inputRegion" placeholder="Enter email of the user">
</div>
<button type="submit" class="btn btn-success w-100">Submit</button>
</form>