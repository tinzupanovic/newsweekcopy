<?php 
    session_start();
    include 'connect.php'; 
    define('UPLPATH', 'images/'); 
    $category = $_GET['category'];
?>
<!DOCTYPE html>
<html lang="hr">
    <head>
        <meta charset="UTF-8">
	    <meta name="author" content ="Tin Županović"/>
	    <meta name="description" content ="Projekt PWA"/>
        <link rel="stylesheet" href="css/style.css">
	    <title>Newsweek - <?php echo $category; ?></title>
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
        <section id="upper">
            <div class="linetwo"></div>
            <div class="linking">
                <a href="kategorija.php?category=<?php echo $category; ?>"><?php if($category == 'WORLD') {echo ucfirst(strtolower($category));} else{ echo $category;}; ?></a>
            </div>
            <div class="flexb">
                <?php
                    $query = "SELECT * FROM article WHERE archive=0 AND category='$category'"; 
                    $result = mysqli_query($dbc, $query);
                    while($row = mysqli_fetch_array($result)) {
                        echo '<article>';
                        echo '<div class="pic">';
                        echo '<a href="clanak.php?id=' . $row['id'] . '" class="imageaslink">';
                        echo '<img id="first" src="' . UPLPATH . $row ['photo'] . '">';
                        echo '</a>';
                        echo '</div>';
                        echo '<a href="clanak.php?id=' . $row['id'] . '" class="tldr">';
                        echo $row['tldr'];
                        echo '</a>';
                        echo '</article>';
                    }
                    mysqli_close($dbc); 
                ?>
            </div>
        </section>
        <footer>
            <p>© <?php echo date('Y'); ?> NEWSWEEK</p>
            <div class="linetwo"></div>
        </footer>
    </body>
</html>

    
    
