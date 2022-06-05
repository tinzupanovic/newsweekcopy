<!DOCTYPE html>
<html lang="hr">
    <head>
        <meta charset="UTF-8">
	    <meta name="author" content ="Tin Županović"/>
	    <meta name="description" content ="Projekt PWA"/>
        <link rel="stylesheet" href="css/style.css">
	    <title>Newsweek - New Article</title>
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon.png">
        
    </head>

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
                session_start();
                if (isset($_SESSION['$username'])) {
                    echo "<a class='logoutbutton' href='logout.php'>LOGOUT</a>";
                }
            ?>
        </header>
        <article class="entry">
            <form name="newarticle" action="skripta.php" method="post" enctype="multipart/form-data">
                <div class="form-item">
                    <label for="title">News title:</label><br>
                    <span id="msgTitle" class="msgColor"></span>
                    <div class="form-field">
                        <input type="text" name="title" class="form-field-textual" id="title">
                    </div>
                </div>
                <div class="form-item">
                    <label for="about">Short news report (up to 100 characters):</label><br>
                    <span id="msgAbout" class="msgColor"></span>
                    <div class="form-field">
                        <textarea name="about" cols="30" rows="10" class="form-field-textual" id="about"></textarea>
                    </div>
                </div>
                <div class="form-item">
                    <label for="content">News content: </label><br>
                    <span id="msgContent" class="msgColor"></span>
                    <div class="form-field">
                        <textarea name="content" cols="30" rows="10" class="form-field-textual" id="content"></textarea>
                    </div>
                </div>
                <div class="form-item">
                    <label for="photo" >Picture: </label><br>
                    <span id="msgPhoto" class="msgColor"></span>
                    <div class="form-field">
                        <input type="file" accept="image/jpg,image/gif,image/png" class="photo" name="photo" id="photo"/>
                    </div>
                </div>
                <div class="form-item">
                    <label for="category">Category: </label><br>
                    <span id="msgCategory" class="msgColor"></span>
                    <div class="form-field">
                        <select name="category" class="form-field-textual" id="category">
                            <option value="" disabled selected>Select category</option>
                            <option value="U.S.">U.S.</option> 
                            <option value="WORLD">WORLD</option>
                        </select>
                    </div>
                </div>
                <div class="form-item">
                    <label>Save to archive:
                        <div class="form-field">
                            <input type="checkbox" name="archive">
                        </div>
                    </label>
                </div>
                <div class="form-item">
                    <button type="reset" value="Decline" class="red-button">Decline</button>
                    <button name="Accept" type="submit" value="Accept" class="red-button" id="sendd">Accept</button>
                </div>
            </form>
            <script type = "text/javascript"> 
                document.getElementById("sendd").onclick = function(event) { 
                    var sendForm = true; 
                    var fieldTitle = document.getElementById("title"); 
                    var title = document.getElementById("title").value; 
                    if (title.length < 5 || title.length > 64) { 
                        sendForm = false; 
                        fieldTitle.style.border="1px solid red"; 
                        document.getElementById("msgTitle").innerHTML="News title has to be between 5 and 64 characters!<br>"; 
                    } else { 
                        fieldTitle.style.border="1px solid green"; 
                        document.getElementById("msgTitle").innerHTML=""; 
                    }
                    var fieldAbout = document.getElementById("about"); 
                    var about = document.getElementById("about").value; 
                    if (about.length < 10 || about.length > 100) { 
                        sendForm = false; 
                        fieldAbout.style.border="1px solid red"; 
                        document.getElementById("msgAbout").innerHTML="Short news report has to be between 10 and 100 characters!<br>"; 
                    } else { 
                        fieldAbout.style.border="1px solid green"; 
                        document.getElementById("msgAbout").innerHTML=""; 
                    }
                    var fieldContent = document.getElementById("content"); 
                    var content = document.getElementById("content").value; 
                    if (content.length == 0) { 
                        sendForm = false; 
                        fieldContent.style.border="1px solid red"; 
                        document.getElementById("msgContent").innerHTML="News content has to be entered!<br>"; 
                    } else { 
                        fieldContent.style.border="1px solid green";
                        document.getElementById("msgContent").innerHTML=""; 
                    }
                    var fieldPhoto = document.getElementById("photo");
                    var photo = document.getElementById("photo").value; 
                    if (photo.length == 0) { 
                        sendForm = false; 
                        fieldPhoto.style.border="1px solid red"; 
                        document.getElementById("msgPhoto").innerHTML="Picture has to be chosen!<br>"; 
                    } else { 
                        fieldPhoto.style.border="1px solid green"; 
                        document.getElementById("msgPhoto").innerHTML=""; 
                    }
                    var fieldCategory = document.getElementById("category"); 
                    if (document.getElementById("category").selectedIndex == 0) { 
                        sendForm = false; 
                        fieldCategory.style.border="1px solid red"; 
                        document.getElementById("msgCategory").innerHTML="Category has to be chosen!<br>"; 
                    } else { 
                        fieldCategory.style.border="1px solid green"; 
                        document.getElementById("msgCategory").innerHTML=""; 
                    } 
                    if (sendForm != true) { 
                        event.preventDefault(); 
                    } 
                }; 
            </script>
        </article>
        <footer>
            <p>© <?php echo date('Y'); ?> NEWSWEEK</p>
            <div class="linetwo"></div>
        </footer>
    </body>
</html>

