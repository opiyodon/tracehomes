<?php include 'config/constants.php'; ?>
<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        Tracehomes
    </title>
    <link href="images/logo.jpg" type="image/x-icon" rel="icon">
    <link href="css/style.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>

<body>

    <div class="resetPassword">
        <form action="" method="POST" class="MyResetPasswordForm">
            <?php
            if (isset($_SESSION['message'])) {
                echo $_SESSION['message'];
                unset($_SESSION['message']);
            }
            ?>
            <h1>Forgot Password</h1>
            <div>
                <input required class="INPUT" type="email" name="email" placeholder="Enter your email">
            </div>
            <div>
                <input type="submit" name="submit" value="Reset Password" class="btn">
            </div>
        </form>
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
if (isset($_POST['submit'])) {
    $email = $_POST['email'];

    // Generate a random password reset token
    $token = bin2hex(random_bytes(32));

    // Store the token in the database along with the user's email
    $sql = "UPDATE user SET reset_token='$token' WHERE email='$email'";
    $res = mysqli_query($conn, $sql);

    if ($res) {
        // Send reset password email
        $to = $email;
        $subject = 'Reset Your Password';
        $message = 'Click the following link to reset your password: ' . SITEURL_USER . 'resetpassword.php?token=' . $token;
        $headers = 'From: opiyodon9@gmail.com';

        if (mail($to, $subject, $message, $headers)) {
            $_SESSION['message'] = "<div class='SUCCESS'>Reset password link sent to your email</div>";
        } else {
            $_SESSION['message'] = "<div class='ERROR'>Failed to send reset password link</div>";
        }
    } else {
        $_SESSION['message'] = "<div class='ERROR'>Email not found</div>";
    }
}

?>
