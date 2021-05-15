
<!doctype html>
<html lang="en">
	<head>
		<?php include 'components/header.php';?>

		<title>Welcome to MovieBox</title>
	</head>
	<body>
		    <?php
    $link = mysqli_connect("localhost", "root", "", "3623314_loginsystem");
    $sql = "SELECT * FROM movietable";
    ?>
		<?php include 'components/navbar.php';?>

		<header id="myCarousel" class="carousel slide">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<div class="fill" style="background-image:url('img/post-strange.jpg');"></div>
					<div class="carousel-caption">
						<h2>Book tickets in a few clicks</h2>
					</div>
				</div>
				<div class="item">
					<div class="fill" style="background-image:url('img/post-parmanu.jpg');"></div>
					<div class="carousel-caption">
						<h2>Get movie ratings</h2>
					</div>
				</div>
				<div class="item">
					<div class="fill" style="background-image:url('img/post-dunkirk.png');"></div>
					<div class="carousel-caption">
						<h2>Read the latest reviews</h2>
					</div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="icon-prev"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="icon-next"></span>
			</a>
		</header>

		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2 class="page-header">Movies</h2>
				</div>
				<div class="col-xs-12">
					<h5 class="center-align text-uppercase lead">Coming Soon</h5>
				</div>
				<div class="col-md-3 col-sm-6">
						<img class="img-responsive img-portfolio img-hover" src="img/cs-adhm.jpg" alt="">
				</div>
				<div class="col-md-3 col-sm-6">
						<img class="img-responsive img-portfolio img-hover" src="img/cs-rockon2.jpg" alt="">
				</div>
				<div class="col-md-3 col-sm-6">
						<img class="img-responsive img-portfolio img-hover" src="img/cs-strange.png" alt="">
				</div>
				<div class="col-md-3 col-sm-6">
						<img class="img-responsive img-portfolio img-hover" src="img/cs-fbawtft.jpg" alt="">
				</div>
			</div>
			<br><br><br>
		</div>

    <div id="home-section-1" class="movie-show-container">
        <h1>Currently Showing</h1>
        <h3>Book a movie now</h3>

        <div class="movies-container">

            <?php
                        if($result = mysqli_query($link, $sql)){
                            if(mysqli_num_rows($result) > 0){
                                for ($i = 0; $i <= 5; $i++){
                                    $row = mysqli_fetch_array($result);
                                    echo '<div class="movie-box">';
                                    echo '<img src="'. $row['movieImg'] .'" alt=" ">';
                                    echo '<div class="movie-info ">';
                                    echo '<h3>'. $row['movieTitle'] .'</h3>';
                                    echo '<a href="booking.php?id='.$row['movieID'].'"><i class="fas fa-ticket-alt"></i> Book a seat</a>';
                                    echo '</div>';
                                    echo '</div>';
                                }
                                mysqli_free_result($result);
                            } else{
                                echo '<h4 class="no-annot">No Booking to our movies right now</h4>';
                            }
                        } else{
                            echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
                        }
                        
                        // Close connection
                        mysqli_close($link);
                        ?>
        </div>
    </div>
    <div id="home-section-2" class="services-section">
        <h1>How it works</h1>
        <h3>3 Simple steps to book your favourit movie!</h3>

        <div class="services-container">
            <div class="service-item">
                <div class="service-item-icon">
                    <i class="fas fa-4x fa-video"></i>
                </div>
                <h2>1. Choose your favourite movie</h2>
                <p>choose the movie you want to watch at our theaters</p>
            </div>
            <div class="service-item">
                <div class="service-item-icon">
                    <i class="fas fa-4x fa-credit-card"></i>
                </div>
                <h2>2. Pay for your tickets</h2>
                <p>choose the movie you want to watch at our theaters</p>
            </div>
            <div class="service-item">
                <div class="service-item-icon">
                    <i class="fas fa-4x fa-theater-masks"></i>
                </div>
                <h2>3. Pick your seats & Enjoy watching</h2>
                <p>choose the movie you want to watch at our theaters</p>
            </div>
            <div class="service-item"></div>
            <div class="service-item"></div>
        </div>
    </div>
    <div id="home-section-3" class="trailers-section">
        <h1 class="section-title">Explore new movies</h1>
        <h3>Now showing</h3>
        <div class="trailers-grid">
            <div class="trailers-grid-item">
                <img src="img/movie-thumb-1.jpg" alt="">
                <div class="trailer-item-info" data-video="Z1BCujX3pw8">
                    <h3>Captain Marvel</h3>
                    <i class="far fa-3x fa-play-circle"></i>
                </div>
            </div>
            <div class="trailers-grid-item">
                <img src="img/movie-thumb-2.jpg" alt="">
                <div class="trailer-item-info" data-video="OPEfsEaFv_c">
                    <h3>Karmat Bytmrmt</h3>
                    <i class="far fa-3x fa-play-circle"></i>
                </div>
            </div>
            <div class="trailers-grid-item">
                <img src="img/movie-thumb-3.jpg" alt="">
                <div class="trailer-item-info" data-video="cksYkEzUa7k">
                    <h3>The Lego Movie</h3>
                    <i class="far fa-3x fa-play-circle"></i>
                </div>
            </div>
            <div class="trailers-grid-item">
                <img src="img/movie-thumb-4.jpg" alt="">
                <div class="trailer-item-info" data-video="Ze5YA4mkzhI">
                    <h3>Secret Men Club</h3>
                    <i class="far fa-3x fa-play-circle"></i>
                </div>
            </div>
            <div class="trailers-grid-item">
                <img src="img/movie-thumb-5.jpg" alt="">
                <div class="trailer-item-info" data-video="lbUAVTc7NTo">
                    <h3>VICE</h3>
                    <i class="far fa-3x fa-play-circle"></i>
                </div>
            </div>
            <div class="trailers-grid-item">
                <img src="img/movie-thumb-6.jpg" alt="">
                <div class="trailer-item-info" data-video="RyFlfN4dD14">
                    <h3>The Vanishing</h3>
                    <i class="far fa-3x fa-play-circle"></i>
                </div>
            </div>
        </div>
    </div>

		<div class="bottom">
			<!-- Call to Action Section -->
			<div class="pre-footer small">
				<div class="row">
					<div class="col-xs-12">
						<h5 class="center-align bold" style="color:#555;">Book an experience with MovieBox!</h5>
					</div>
					<div class="row row-content">
						<div class="col-xs-12">
						Life has never been so convenient for a movie buff! Remember the time, when you had to stand in a long queue outside the theatre to book movie tickets? That time is gone now!With the emergence of MovieBox, India's biggest online ticketing portal, booking movie tickets have become a cake walk. Now, enjoy your favourite movies in theatre with just a click! MovieBox is Movies on the go - Jahan mood kiya wahan book kiya! Just take out your mobile, launch the app, choose your movie, theatre &amp; show time and book tickets online, right away! So simple. Isn't it! We give you some more amazingly cool reasons why you should book your movie tickets here!
						</div>
					</div>
					<div class="row row-content">
						<div class="col-sm-4 col-xs-12">
							<h5 class="bold">Bollywood, Hollywood or Regional cinema</h5>
						<p>Whatever be your choice in movies, MovieBox is the Go-to destination! With the list of all the upcoming movies in any language - Hindi, English, Marathi, Tamil, Telugu, Kannada, Malayalam or Genre – Action, Comedy, Thriller, Drama, Romance, Animation or Crime, we keep you informed about the movie world! We give you the release dates also, to let you plan your movie outing accordingly!</p>
						</div>
						<div class="col-sm-4 col-xs-12">
							<h5 class="bold">Check out latest movie trailers</h5>
						<p>They say “If the constitution was a film, the preamble would be the trailer”. Now, go nowhere, come straight to us and check out the all the latest Bollywood, Hollywood, Kollywood or Tollywood movie trailers before booking your tickets. We bring you the theatrical previews of all the showing movies! </p>
						</div>
						<div class="col-sm-4 col-xs-12">
							<h5 class="bold">Read Movie Reviews</h5>
						<p>If you are the kind of person, who checks reviews before booking movie tickets, we have made it convenient for you as well! You can catch the movie reviews by our own reviewers and the experts on our website.</p>
						</div>
					</div>
				</div>
			</div>
		</div>

    <div class="fab-container">
    <div class="fab fab-icon-holder">
    <i class="fas fa-comments"></i>
    </div>
    <div class="fab-options">
    <iframe id="log" src="phpChatBot/index.php" __idm_frm__="312"></iframe></div> 
    </div>

		<?php include 'components/footer.php';?>
		<script>
			$('.carousel').carousel({
				interval: 5000 //changes the speed
			})
		</script>
	</body>
</html>
