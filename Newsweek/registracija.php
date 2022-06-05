<!DOCTYPE html>
<html lang="hr">
    <head>
        <meta charset="UTF-8">
	    <meta name="author" content ="Tin Županović"/>
	    <meta name="description" content ="Projekt PWA"/>
        <link rel="stylesheet" href="css/style.css">
	    <title>Newsweek - Registration</title>
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon.png">
    </head>
<?php 
    session_start();
    include 'connect.php'; 
    define('UPLPATH', 'images/'); 

    $registeredUser = "";
    $msg ="";
    if (isset($_POST['send'])) {
        $name = $_POST['name'];
        $surname = $_POST['surname'];
        $user = $_POST['username'];
        $pass = $_POST['pass'];
        $hashed_pass = password_hash($pass, PASSWORD_BCRYPT);
        $clearance = 0;
        $sql = "SELECT username FROM users WHERE username LIKE ?";
        $stmt = mysqli_stmt_init($dbc);
        if (mysqli_stmt_prepare($stmt, $sql)) {
            mysqli_stmt_bind_param($stmt, 's', $user);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);
        }
        if(mysqli_stmt_num_rows($stmt) > 0) {
            $msg = 'Username already exists!';
        } else {
            $sql = "INSERT INTO users (name, surname, username, password, clearance) VALUES (?, ?, ?, ?, ?)";
            $stmt = mysqli_stmt_init($dbc);
            if (mysqli_stmt_prepare($stmt, $sql)) {
                mysqli_stmt_bind_param($stmt, 'ssssi', $name, $surname, $user, $hashed_pass, $clearance);
                mysqli_stmt_execute($stmt);
                $registeredUser = true;
            }
        }
        mysqli_close($dbc);
    }
?>
    <body>
        <header>
            <p><?php echo date('D, M d, Y'); ?></p>
            <div id="logo"></div>
            <nav>
                <a href="index.php">Home</a>
                <a class="line"></a>
				<a href="kategorija.php?category=U.S.">U.S.</a>
                <a class="line"></a>
				<a href="kategorija.php?category=WORLD">World</a>
                <a class="line"></a>
                <a href="unos.php">New Article</a>
                <a class="line"></a>
				<a href="administracija.php">Administration</a>
                <div id="shape"></div>
            </nav>
            <?php 
                if (isset($_SESSION['$username'])) {
                    echo "<a class='logoutbutton' href='logout.php'>LOGOUT</a>";
                }
            ?>
        </header>
        <?php
            if($registeredUser == true) {
                echo '<article class ="entry"><p>User successfully registered!</p></article>';
            } else {
        ?>
        <article class="entry">
            <form enctype="multipart/form-data" action="" method="POST">
                <div class="form-item">
                    <label for="name">Name: </label>
                    <span id="msgName" class="msgColor"></span>
                    <div class="form-field">
                        <input type="text" name="name" id="name" class="form-field-textual">
                    </div>
                </div>
                <div class="form-item">
                    <label for="surname">Surname: </label>
                    <span id="msgSurname" class="msgColor"></span>
                    <div class="form-field">
                        <input type="text" name="surname" id="surname" class="form-field-textual">
                    </div>
                </div>
                <div class="form-item">
                    <label for="username">Username:</label>
                    <span id="msgUsername" class="msgColor"></span>
                    <?php if($msg != "") { echo '<br><span class="msgColor">'.$msg.'</span>'; }; ?>
                    <div class="form-field">
                        <input type="text" name="username" id="username" class="form-field-textual">
                    </div>
                </div>
                <div class="form-item">
                    <label for="pass">Password: </label>
                    <span id="msgPass" class="msgColor"></span>
                    <div class="form-field">
                        <input type="password" name="pass" id="pass" class="form-field-textual">
                    </div>
                </div>
                <div class="form-item">
                    <label for="passRep">Repeat password: </label>
                    <span id="msgPassRep" class="msgColor"></span>
                    <div class="form-field">
                        <input type="password" name="passRep" id="passRep" class="form-field-textual">
                    </div>
                </div>
                <div class="form-item">
                    <button type="submit" value="Login" class="red-button" id="send" name="send">Register</button>
                </div>
            </form>
        </article>
        <script type="text/javascript">
            document.getElementById("send").onclick = function(event) {
                var sendForm = true;
                var fieldName = document.getElementById("name");
                var name = document.getElementById("name").value;
                if (name.length == 0 || name == "") {
                    sendForm = false;
                    fieldName.style.border="1px solid red";
                    document.getElementById("msgName").innerHTML="<br>Enter name!<br>";
                } else {
                    fieldName.style.border="1px solid green";
                    document.getElementById("msgName").innerHTML="";
                }
                var fieldSurname = document.getElementById("surname");
                var surname = document.getElementById("surname").value;
                if (surname.length == 0 || surname == "") {
                    sendForm = false;
                    fieldSurname.style.border="1px solid red";
                    document.getElementById("msgSurname").innerHTML="<br>Enter surname!<br>";
                } else {
                    fieldSurname.style.border="1px solid green";
                    document.getElementById("msgSurname").innerHTML="";
                }
                var fieldUsername = document.getElementById("username");
                var username = document.getElementById("username").value;
                if (username.length == 0 || username == "") {
                    sendForm = false;
                    fieldUsername.style.border="1px solid red";
                    document.getElementById("msgUsername").innerHTML="<br>Enter username!<br>";
                } else {
                    fieldUsername.style.border="1px solid green";
                    document.getElementById("msgUsername").innerHTML="";
                }
                var fieldPass = document.getElementById("pass");
                var pass = document.getElementById("pass").value;
                var fieldPassRep = document.getElementById("passRep");
                var passRep = document.getElementById("passRep").value;
                if (pass.length == 0 || passRep.length == 0 || pass != passRep || pass == "" || passRep == "") {
                    sendForm = false;
                    fieldPass.style.border="1px solid red";
                    fieldPassRep.style.border="1px solid red";
                    document.getElementById("msgPass").innerHTML="<br>Password does not match!<br>";
                    document.getElementById("msgPassRep").innerHTML="<br>Password does not match!<br>";
                } else {
                    fieldPass.style.border="1px solid green";
                    fieldPassRep.style.border="1px solid green";
                    document.getElementById("msgPass").innerHTML="";
                    document.getElementById("msgPassRep").innerHTML="";
                }
                if (sendForm != true) {
                    event.preventDefault();
                }
            };

        </script>
        <?php
        }
        ?>
        <footer>
            <p>© <?php echo date('Y'); ?> NEWSWEEK</p>
            <div class="linetwo"></div>
        </footer>
    </body>
</html>

    
    
