<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Photo Gellary</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;400&display=swap');
    body{
      font-family: 'Poppins', sans-serif;
    }
    div#site-name {
    margin-left: 40px;
    }
    .container{
      display: flex;
      flex-wrap: wrap;
    }
    #navbar{
      background-color: black;
      color: white;
    }
    #header-nav{
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    }
    #menu-bar, ul{
      display: flex;
      list-style:none;
    }
    #menu-bar, ul, li{
      padding: 15px;
    }
    #menu-bar,ul, li, a{
      text-decoration: none;
      color:white;
    }
    img{
      object-fit: contain;
      width: 100%;
      height: 450px;
      object-fit: cover;
    }
    .Photographer {
    display: flex;
    flex-wrap: nowrap;
    width: 33.33%;
    padding: 0 15px;
    box-sizing: border-box;
    } 
    footer{
    height:100px;
    background-color: black;
    color: white;
    text-align: center;
    }
    p.copyright{
      padding: 40px;
    }
</style>
</head>
<body>
  <header id="navbar">
    <div id="header-nav">
      <div id="site-name">
        <h1>Photo Gellary</h1>
      </div>
      <div id="menu-bar">
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </div>
    </div>
  </header>
  <section class="container">
      <?php
        $connect = mysqli_connect(
          'sql201.epizy.com', //HOST
          'epiz_33365957', //USER NAME
          'hZATJGQtYznUMu', //PASSWORD
          'epiz_33365957_assignment' // DATABASE NAME
        );
        if (mysqli_connect_errno()) {
          # code...
            echo mysqli_connect_errno();
          exit();
        }
        //Query
        $query = "SELECT * FROM photogallery ORDER BY name ";
        $result = mysqli_query($connect,$query)
          or die(mysqli_connect_error());
        for($record = mysqli_fetch_assoc($result); $record !== NULL; $record = mysqli_fetch_assoc($result)) {
          echo '<div class="Photographer">';
          echo '<div class="profile">';
          echo '<h2>Photographer : '.$record['name'].'</h2>';
          echo '<img src="'.$record['photo'].'">';
          echo '<p>Details : '.$record['description'].'</p>';
          echo '<h5>Device info : '.$record['device'].'</h5>';
          echo '<h6>Date : '.$record['date'].'</h6>';
          echo '</div>';
          echo '</div>';
        }
      ?>
  </section>
  <footer>
    <p class="copyright"> Assignment 1 PHP &copy; Copyright Harshadkumar Patel, 2023</p>
  </footer>
</body>
</html>