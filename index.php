<?php include 'partials/nav.php'; ?>

<?php

// Process form submission for saving contact details
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['save_contact'])) {
    // Check if all fields are filled
    if (isset($_POST['mobile']) && isset($_POST['email']) && isset($_POST['address']) && isset($_POST['registration'])) {
        // Sanitize input data
        $mobile = mysqli_real_escape_string($conn, $_POST['mobile']);
        $email = mysqli_real_escape_string($conn, $_POST['email']);
        $address = mysqli_real_escape_string($conn, $_POST['address']);
        $registration = mysqli_real_escape_string($conn, $_POST['registration']);

        // SQL query to insert contact details into database
        $sql = "INSERT INTO contacts (mobile, email, address, registration) VALUES ('$mobile', '$email', '$address', '$registration')";

        // Execute query
        if (mysqli_query($conn, $sql)) {
            echo "<script>alert('Contact details saved successfully.')</script>";
        } else {
            echo "<script>alert('Error: " . mysqli_error($conn) . "')</script>";
        }
    } else {
        echo "<script>alert('Please fill all fields.')</script>";
    }
}

// Process form submission for searching contact details
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['search_contact'])) {
    // Check if the registration number is provided
    if (isset($_POST['search_registration'])) {
        $search_registration = mysqli_real_escape_string($conn, $_POST['search_registration']);

        // SQL query to search for contact details based on registration number
        $sql = "SELECT * FROM contacts WHERE registration = '$search_registration'";

        // Execute query
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) > 0) {
            // Display contact details
            while ($row = mysqli_fetch_assoc($result)) {
                echo "<p>Contact Details:</p>";
                echo "<p>Mobile: " . $row['mobile'] . "</p>";
                echo "<p>Email: " . $row['email'] . "</p>";
                echo "<p>Address: " . $row['address'] . "</p>";
                echo "<p>Registration Number: " . $row['registration'] . "</p>";
            }
        } else {
            echo "<p>No contact found with the provided registration number.</p>";
        }
    } else {
        echo "<p>Please provide a registration number for searching.</p>";
    }
}
?>

<!-- Contact Form -->
<section id="Contact">
    <a name="Contact">
        <div class="CONTACT">
            <div class="ROW">
                <div>
                    <p class="SECTION_TITLE">Contact Us</p>
                </div>
            </div>
            <div class="CONTACT_TITLE">
                <p>Have Any Questions?</p>
            </div>
            <div class="CONTACT_BOX">
                <div class="CONTACT_FORM_BOX">
                    <div class="Card">
                        <div class="ROW1">
                            <div class="ROW">
                                <!-- Save Contact Form -->
                                <form class="GFORM" method="POST"
                                    action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
                                    <div class="ROW">
                                        <div class="CONTACT_FORM">
                                            <div class="CONTACT_FORM_ITEM1">
                                                <div class="FORM_ITEM2">
                                                    <div class="FORM_GROUP">
                                                        <input type="text" name="mobile" required class="FORM_CONTROL"
                                                            placeholder="Mobile">
                                                    </div>
                                                </div>
                                                <div class="FORM_ITEM2">
                                                    <div class="FORM_GROUP">
                                                        <input type="email" name="email" required id="GMAIL"
                                                            class="FORM_CONTROL" placeholder="Email">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ROW">
                                                <div class="FORM_ITEM">
                                                    <div class="FORM_GROUP">
                                                        <input type="text" name="address" required class="FORM_CONTROL"
                                                            placeholder="Address">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ROW">
                                                <div class="FORM_ITEM">
                                                    <div class="FORM_GROUP">
                                                        <input type="text" name="registration" required
                                                            class="FORM_CONTROL" placeholder="Registration Number">
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <input type="submit" name="save_contact" class="btn SUBMIT_BTN"
                                                    value="Save Contact">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <!-- Search Contact Form -->
                                <form class="GFORM" method="POST"
                                    action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
                                    <div class="ROW">
                                        <div class="CONTACT_FORM">
                                            <div class="ROW">
                                                <div class="FORM_ITEM">
                                                    <div class="FORM_GROUP">
                                                        <input type="text" name="search_registration" required
                                                            class="FORM_CONTROL"
                                                            placeholder="Enter Registration Number to Search">
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <input type="submit" name="search_contact" class="btn SUBMIT_BTN"
                                                    value="Search Contact">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="CONTACT_MAP">
                                <!-- Google Maps Embed -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </a>
</section>

<?php include 'partials/footer.php'; ?>