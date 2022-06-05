<?php 
    session_start();
    include 'connect.php'; 
    $id = $_GET['id'];
    $query = "SELECT * FROM article WHERE id=$id"; 
    $result = mysqli_query($dbc, $query);
    $row = mysqli_fetch_array($result);
    mysqli_close($dbc); 
?>
<!DOCTYPE html>
<html lang="hr">
    <head>
        <meta charset="UTF-8">
	    <meta name="author" content ="Tin Županović"/>
	    <meta name="description" content ="Projekt PWA"/>
        <link rel="stylesheet" href="css/style.css">
	    <title>Newsweek - <?php echo $row['tldr']; ?></title>
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
            <a id="linkstocategory" href="kategorija.php?category=<?php echo $row['category'];?>"><?php if($row['category'] == 'WORLD') {echo ucfirst(strtolower($row['category']));} else{ echo $row['category'];}; ?></a>
            <h2><?php echo $row['tldr']; ?></h2>
            <p id="date"><?php echo $row['date']; ?></p>
            <div id="seventh" style="background-image: url('images/<?php echo $row['photo']; ?>')"></div>
            <a href="kategorija.php?category=<?php echo $row['category']; ?>" class="tag"><?php echo $row['category']; ?></a>
            <p class="fclear" style="margin-bottom: 10px;"><?php echo $row['article']; ?>
            </p>
        </article>
        <footer>
            <p>© <?php echo date('Y'); ?> NEWSWEEK</p>
            <div class="linetwo"></div>
        </footer>
    </body>
</html>