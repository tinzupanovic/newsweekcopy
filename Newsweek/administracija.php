<!DOCTYPE html>
<html lang="hr">
    <head>
        <meta charset="UTF-8">
	    <meta name="author" content ="Tin Županović"/>
	    <meta name="description" content ="Projekt PWA"/>
        <link rel="stylesheet" href="css/style.css">
	    <title>Newsweek - Administration</title>
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon.png">
    </head>
<?php 
    session_start();
    include 'connect.php'; 
    define('UPLPATH', 'images/'); 

    $successfulLogin = "";
    $admin = "";
    $wrongID = false;
    if (isset($_POST['send'])) { 
        $loginUsername = $_POST['username']; 
        $loginUserPass = $_POST['pass']; 
        $sql = "SELECT username, password, clearance FROM users WHERE username = ?"; 
        $stmt = mysqli_stmt_init($dbc); 
        if (mysqli_stmt_prepare($stmt, $sql)) { 
            mysqli_stmt_bind_param($stmt, 's', $loginUsername); 
            mysqli_stmt_execute($stmt); 
            mysqli_stmt_store_result($stmt); 
        } 
        mysqli_stmt_bind_result($stmt, $userName, $userNamePass, $clearanceLevel); 
        mysqli_stmt_fetch($stmt); 
        if (password_verify($_POST['pass'], $userNamePass) && mysqli_stmt_num_rows($stmt) > 0) { 
            $successfulLogin = true;
            if($clearanceLevel == 1) { 
                $admin = true; 
            } else { 
                $admin = false; 
            } 
            $_SESSION['$username'] = $userName; 
            $_SESSION['$level'] = $clearanceLevel; 
            $wrongID = false;
        } else { 
            $successfulLogin = false; 
            $wrongID = true;
        } 
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

        <section id="admin">
        <?php
            if (($successfulLogin == true && $admin == true) || (isset($_SESSION['$username'])) && $_SESSION['$level'] == 1) { 
                $query = "SELECT * FROM article"; 
                $result = mysqli_query($dbc, $query); 
                while($row = mysqli_fetch_array($result)) { 
                    echo '<div class="linetwo"></div>';
                    echo '<form enctype="multipart/form-data" action="" method="POST"> 
                            <div class="form-item"> 
                                <label for="title">News title:</label> 
                            <div class="form-field"> 
                                <input type="text" name="title" class="form-field-textual" value="' . $row['headline'] . '"> 
                            </div> 
                            </div> 
                            <div class="form-item"> 
                                <label for="about">Short news report (up to 50 characters):</label> 
                            <div class="form-field"> 
                                <textarea name="about" id="" cols="30" rows="10" class="form-field-textual">' . $row['tldr'] . '</textarea> 
                            </div> 
                            </div> 
                            <div class="form-item"> 
                                <label for="content">News content:</label> 
                            <div class="form-field"> 
                                <textarea name="content" id="" cols="30" rows="10" class="form-field-textual">' . $row['article'] . '</textarea> 
                            </div> 
                            </div>
                            <div class="form-item"> 
                                <label for="photo">Picture:</label> 
                            <div class="form-field">
                                <input type="file" class="input-text" id="photo" value="' . $row['photo'] . '" name="photo"/> 
                            <br><img src="' . UPLPATH . $row['photo'] . '" width=100px> 
                            </div> 
                            </div>
                            <div class="form-item"> 
                                <label for="category">Category:</label> 
                            <div class="form-field"> 
                                <select name="category" id="" class="form-field-textual" value="' . $row['category'] . '"> 
                                    <option value="U.S.">U.S.</option> 
                                    <option value="WORLD">WORLD</option> 
                                </select> 
                            </div> 
                            </div> 
                            <div class="form-item"> 
                                <label>Save to archive:
                                <div class="form-field">'; 
                                    if($row['archive'] == 0) {
                                        echo '<input type="checkbox" name="archive" id="archive"/> Archive?'; 
                                    } else { 
                                        echo '<input type="checkbox" name="archive" id="archive" checked/> Archive?';
                                    }
                                    echo '</div> 
                                </label> 
                            </div> 
                            </div> 
                            <div class="form-item"> 
                                <input type="hidden" name="id" class="form-field-textual" value="' . $row['id'] . '"> 
                                <button type="reset" value="Decline" class="red-button">Decline</button> 
                                <button type="submit" name="update" value="Accept" class="red-button">Update</button> 
                                <button type="submit" name="delete" value="Delete" class="red-button">Delete</button> 
                            </div> 
                            </form>'; 
                }
                if(isset($_POST['delete'])) { 
                    $id=$_POST['id']; 
                    $query = "DELETE FROM article WHERE id=$id "; 
                    $result = mysqli_query($dbc, $query); 
                    mysqli_close($dbc); 
                    echo "<meta http-equiv='refresh' content='0'>";
                }
                if(isset($_POST['update'])){ 
                    $picture = $_FILES['photo']['name']; 
                    $title = $_POST['title']; 
                    $about = $_POST['about']; 
                    $content = $_POST['content']; 
                    $category = $_POST['category']; 
                    if(isset($_POST['archive'])) { 
                        $archive=1; 
                    } else { 
                        $archive=0; 
                    } 
                    $target_dir = 'images/'.$picture; 
                    move_uploaded_file($_FILES["photo"]["tmp_name"], $target_dir); 
                    $id=$_POST['id']; 
                    $sql = "UPDATE article SET headline=?, tldr=?, article=?, photo=?, category=?, archive=? WHERE id=$id";
                    $stmt = mysqli_stmt_init($dbc);
                    if (mysqli_stmt_prepare($stmt, $sql)) {
                        mysqli_stmt_bind_param($stmt, 'sssssi',  $title, $about, $content, $picture, $category, $archive);
                        mysqli_stmt_execute($stmt);
                    }
                    mysqli_close($dbc); 
                    echo "<meta http-equiv='refresh' content='0'>";
                }
            
            } else if ($successfulLogin == true && $admin == false) { 
                echo '<p>Hello ' . $userName . '! You have successfully logged in, but you do not have admin rights.</p>'; 
            } else if (isset($_SESSION['$username']) && $_SESSION['$level'] == 0) {
                echo '<p>Hello ' . $_SESSION['$username'] . '! You have successfully logged in, but you do not have admin rights.</p>'; 
            } else if ($successfulLogin == false) { 
        ?> 
        <article class="entry">
            <form enctype="multipart/form-data" action="" method="POST">
                <div class="form-item">
                    <label for="username">Username:</label>
                    <span id="msgUsername" class="msgColor"></span>
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
                <?php
                    if($wrongID == true) {
                        echo "<p style='margin-bottom: 10px;'>Wrong Username or Password! Create account by clicking the link below.</p>";
                    }
                ?>
                <a class="gotoreg" href="registracija.php">Don't have an account? Register here.</a>
                <div class="spc"></div>
                <div class="form-item">
                    <button type="submit" value="Login" class="red-button" id="send" name="send">Login</button>
                </div>
            </form>
        </article>
        <script type="text/javascript"> 
            document.getElementById("send").onclick = function(event) {
                var sendForm = true;
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
                if (pass.length == 0) {
                    sendForm = false;
                    fieldPass.style.border="1px solid red";
                    fieldPassRep.style.border="1px solid red";
                    document.getElementById("msgPass").innerHTML="<br>Enter password!<br>";
                } else {
                    fieldPass.style.border="1px solid green";
                    document.getElementById("msgPass").innerHTML="";
                }
                if (sendForm != true) {
                    event.preventDefault();
                }
        </script> 
        <?php } 
        ?>
        </section>
        <footer>
            <p>© <?php echo date('Y'); ?> NEWSWEEK</p>
            <div class="linetwo"></div>
        </footer>
    </body>
</html>

    
    
