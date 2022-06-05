<?php
    session_start();
    $title = $_POST['title'];
    $report = $_POST['about'];
    $news = $_POST['content'];
    $picture = $_FILES['photo']['name'];
    $category = $_POST['category'];

    include 'connect.php';
    $picture1 = $_FILES['photo']['name']; 
    $title1 = $_POST['title']; 
    $about1 = $_POST['about']; 
    $content1 = $_POST['content']; 
    $category1 = $_POST['category']; 
    $date1 = date('m/d/y'); 
    if (isset($_POST['archive']))
    { 
        $archive1 = 1; 
    } else { 
        $archive1 = 0; 
    } 
    $target_dir = 'images/' . $picture1; 
    move_uploaded_file($_FILES["photo"]["tmp_name"], $target_dir);
    $sql = "INSERT INTO article (date, headline, tldr, article, photo, category, archive ) VALUES ('$date1', ?, ?, ?, ?, ?, ?)";
    $stmt = mysqli_stmt_init($dbc);
    if (mysqli_stmt_prepare($stmt, $sql)) {
        mysqli_stmt_bind_param($stmt, 'sssssi',  $title1, $about1, $content1, $picture1, $category1, $archive1);
        mysqli_stmt_execute($stmt);
    }
    mysqli_close($dbc); 
?>

<!DOCTYPE html>
<html lang="hr">
    <head>
        <meta charset="UTF-8">
	    <meta name="author" content ="Tin Županović"/>
	    <meta name="description" content ="Projekt PWA"/>
        <link rel="stylesheet" href="css/style.css">
	    <title>Newsweek - <?php echo $about1; ?></title>
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
                if (isset($_SESSION['$username'])) {
                    echo "<a class='logoutbutton' href='logout.php'>LOGOUT</a>";
                }
            ?>
        </header>
        <article id="story">
            <h1><?php echo $category;?></h1>
            <h2><?php echo $news;?></h2>
            <p id="date"><?php echo $date1; ?></p>
            <div id="php-picture" style='background-image: url("images/<?php echo $picture;?>");'></div>
            <a href="http://localhost/Newsweek/index.php#<?php echo $category;?>" class="tag"><?php echo $category;?></a>
            <p class="fclear" style="margin-bottom: 10px;"><?php echo $news;?></p>
        </article>
        <footer>
            <p>© <?php echo date('Y'); ?> NEWSWEEK</p>
            <div class="linetwo"></div>
        </footer>
    </body>
</html>