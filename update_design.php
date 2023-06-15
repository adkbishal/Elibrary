<?php include("connection.php");
error_reporting(0);
// <?php
session_start(); 

$id= $_GET['id'];
$userprofile= $_SESSION['user_name'];
if($userprofile == true ){

}
else {
    header('location:login.php');
}

$query= "SELECT * from form where id='$id'";
$data= mysqli_query($conn,$query);
// $total= mysqli_num_rows($data);
$result= mysqli_fetch_assoc($data);
// while($result=mysqli_fetch_assoc($data))


?>



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
        <form action="#" method="POST">
        <div class="title">
            Update Student Details
        </div>

        <div class="form">
            <div class="input_field">
                <label for="firstname">First Name</label>
                <input type="text" value="<?php echo $result['fname'];?>" class="input" name="fname" required>
            </div>

            <div class="input_field">
                <label for="lastname">Last Name</label>
                <input type="text" value="<?php echo $result['lname'];?>" class="input" name="lname" required>
            </div>

            <div class="input_field">
                <label for="password">Password</label>
                <input type="password" value="<?php echo $result['password'];?>"  class="input"  name="password" required>
            </div>
            <div class="input_field">
                <label for="confirmpassword">Confirm Password</label>
                <input type="password" value="<?php echo $result['cpassword'];?>" class="input"  name="cpassword" required>
            </div>

            <div class="input_field">
                <label for="gender">Gender</label>
                <select class="selectbox" value="<?php echo $result['gender'];?>" name="gender">
                        <option value="">Select</option>
                        <option value="Male"
                        <?php
                        if($result['gender']== 'Male')
                        {
                            echo "selected";
                        }

                        ?>
                        >
                            Male</option>
                        <option value="Female"
                        <?php
                        if($result['gender']== 'Female')
                        {
                            echo "selected";
                        }

                        ?>
                        >Female</option>
                </select>
            </div>
            <div class="input_field">
                <label for="email">Email Address</label>
                <input type="email"value="<?php echo $result['email'];?>" class="input" name="email">
            </div>

            <div class="input_field">
                <label for="Phone">Phone</label>
                <input type="number"value="<?php echo $result['phone'];?>" class="input" name="phone">
            </div>

            <div class="input_field">
                <label for="address">Address</label>
                <textarea class="textarea"name="address"><?php echo $result['address'];?>
                </textarea>
            </div>
            <div class="input_field terms">
                <label for="check">
                    <input type="checkbox">
                    <span class="checkmark" ></span>
                </label>
                <p class="terms">Agree to terms and conditions</p>
                </div>

                <div class="input_field">
                    <input type="submit" value="update details" class="btn" name="update">
                </div>
            </div>
            </form>
    </div>
</body>
</html>

<?php
if ($_SERVER['REQUEST_METHOD']==='POST'){
    if(isset($_POST['update']))
// if ($_POST['update'])
{
    $fname=$_POST['fname'];
    $lname=$_POST['lname'];
    $pwd=$_POST['password'];
    $cpwd=$_POST['cpassword'];
    $gender=$_POST['gender'];
    $email=$_POST['email'];
    $phone=$_POST['phone'];
    $address=$_POST['address'];

    
    // $query="INSERT INTO form (fname,lname,password,cpassword,gender,email,phone,address) values('$fname','$lname','$pwd','$cpwd','$gender','$email',
    // '$phone','$address')";
    
    $query= "UPDATE form set fname='$fname',lname='$lname',password='$pwd',
    cpassword='$cpwd',gender='$gender',email='$email',phone='$phone',address='$address' WHERE id='$id'";

    $data= mysqli_query($conn,$query);
    if($data) 
    {
        echo "<script>alert('record updated successfully');</script>";
        ?>
        <meta http-equiv="refresh"
         content="0;url=http://localhost/new_Crud_Practice/display.php" />

        <?php
    }
    else {
        echo "<script>alert('record  not updated ');</script>";
    }
}
}

?>

