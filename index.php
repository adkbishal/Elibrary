<?php include("connection.php");
error_reporting(0); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forms</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <form action="#" method="POST" enctype="multipart/form-data">
        <div class="title">
            Registration Form
        </div>

        <div class="form">
            <div class="input_field" >
                <label>Upload Images</label>
                <input type="file" name="uploadfile" style="width:100%;">
            </div>
            <div class="input_field">
                <label for="firstname">First Name</label>
                <input type="text" class="input" name="fname" required>
            </div>

            <div class="input_field">
                <label for="lastname">Last Name</label>
                <input type="text" class="input" name="lname" required>
            </div>

            <div class="input_field">
                <label for="password">Password</label>
                <input type="password" class="input" name="password" required>
            </div>
            <div class="input_field">
                <label for="confirmpassword">Confirm Password</label>
                <input type="password" class="input" name="conpassword" required>
            </div>

            <div class="input_field">
                <label for="gender">Gender</label>
                <select class="selectbox" name="gender">
                        <option value="not selected">Select</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                </select>
            </div>
            <div class="input_field">
                <label for="email">Email Address</label>
                <input type="email" class="input" name="email">
            </div>

            <div class="input_field">
                <label for="Phone">Phone</label>
                <input type="number" class="input" name="phone">
            </div>

            <div class="input_field">
                <label for="address">Address</label>
                <textarea class="textarea" name="address"></textarea>
            </div>
            <div class="input_field terms">
                <label for="check">
                    <input type="checkbox">
                    <span class="checkmark" ></span>
                </label>
                <p class="terms">Agree to terms and conditions</p>
                </div>

                <div class="input_field">
                    <input type="submit" value="register" class="btn" name="register">
                </div>
            </div>
            </form>
    </div>
</body>
</html>

<?php
if ($_POST['register'])
{

$filename= $_FILES["uploadfile"]["name"];
$tempname= $_FILES["uploadfile"]["tmp_name"];
$folder= "images/".$filename;
move_uploaded_file($tempname,$folder);


    $fname=$_POST['fname'];
    $lname=$_POST['lname'];
    $pwd=$_POST['password'];
    $cpwd=$_POST['cpassword'];
    $gender=$_POST['gender'];
    $email=$_POST['email'];
    $phone=$_POST['phone'];
    $address=$_POST['address'];

    // if($fname != "" && $lname!= "" && $pwd!="" && 
    // $cpwd!="" && 
    // $gender!="" && $email!="" && $phone!="" && $address!="") 
    //{ //Curly Braces started of cheking Form Validation
    $query="INSERT INTO form (std_img,fname,lname,password,cpassword,gender,email,phone,address) values('$folder','$fname','$lname','$pwd','$cpwd','$gender','$email',
    '$phone','$address')";
    $data= mysqli_query($conn,$query);

    if($data) 
    {
        echo "<script> alert('data inserted into database') </script>";
    }
    else {
        echo "<script> alert('data inserted into database') </script>";
    }
}
// } //end of Curely Braces started of checking Form validation
// } 
// else {
//     echo "<script> alert ('Fill the form first'); </script>";
// }

?>