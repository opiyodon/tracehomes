<?php include('config/constants.php'); ?>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>
            Homeverse
        </title>
        <link  href="images/bg5.jpg"  type="image/x-icon" rel="icon">
        <link  href="css/style.css"  type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    </head>
    
    <body>
        
    <div class="resetPassword">
            
            
            <!-- ResetPassword Form Starts HEre -->
            <form action="" method="POST" class="MyResetPasswordForm">

                <?php 
                    if(isset($_SESSION['update'])) //checking wether session message is set or not
                    {
                        echo $_SESSION['update']; //displaying session message
                        unset($_SESSION['update']); //removing session message
                    }
                ?>
            
                <h1>Reset Password</h1>
    
                <div>
                    <input required class="INPUT" type="text" name="username" placeholder="Enter Username...">
                </div>
                
                <div>
                    <input required class="INPUT" type="password" name="password1" placeholder="Enter New Password...">
                </div>
                
                <div>
                    <input required class="INPUT" type="password" name="password" placeholder="Confirm New Password...">
                </div>
                
                <div>
                    <input type="submit" name="submit" value="Save" class="btn">
                </div>

                <div>
                    <p>
                        Go back to login page?
                        <a class="LOGIN_LINK_ITEM" href="<?php echo SITEURL_USER; ?>login.php">
                            Login
                        </a>
                    </p>
                </div>

            </form>
            <!-- ResetPassword Form Ends Here -->
        

    </div>



        <!--===========================================================JS FILES====================================================-->

        <script src="https://kit.fontawesome.com/2820328d2c.js" crossorigin="anonymous"></script>

        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

        <!--=========================MAIN JS=========================-->

        <script src="js/script.js"></script>

        <!--=========================MAIN JS=========================-->




    </body>
</html>

<?php
    //Check whether the submit button is clicked or not
    if(isset($_POST['submit']))
    {
        //process data from Login form
        //1. Get the data from login form
        $username=$_POST['username'];
        $password=md5($_POST['password']);

        //2. SQL Query to Save the data into database
        $sql = "UPDATE user SET
            password = '$password'
            WHERE username='$username'
        ";

        //3. Executing query and inserting data into database
        $res = mysqli_query($conn, $sql);

        //4. Check whether the (query is executed) data is inserted or not and display approriate message
        if($res==true)
        {
            //query executed and Password updated
            $_SESSION['update'] = "<div class='SUCCESS'>Password Updated Successfully</div>";
            //redirect to Login Page
            header('location:'.SITEURL_USER.'login.php');
            ob_end_flush();
        }
        else
        {
            //Failed to update Password
            $_SESSION['update'] = "<div class='ERROR'>Failed to Update Password</div>";
            //redirect to forgot_password Page
            header('location:'.SITEURL_USER.'forgot_password.php');
            ob_end_flush();
        }
    }
?>