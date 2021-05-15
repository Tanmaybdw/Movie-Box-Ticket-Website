<html>
<body>
<?php
include('header.php');
?>

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
                    <div class="fill" style="background-image:url('images/black-post.jpg');"></div>
                    <div class="carousel-caption">
                        <h2>Book tickets in a few clicks</h2>
                    </div>
                </div>
                <div class="item">
                    <div class="fill" style="background-image:url('images/bloodshot-post.jpg');"></div>
                    <div class="carousel-caption">
                        <h2>Get movie ratings</h2>
                    </div>
                </div>
                <div class="item">
                    <div class="fill" style="background-image:url('images/alive-post.jpg');"></div>
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

<div class="content">

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
                <img src="images/movie-1.jpg" alt="">
                <div class="trailer-item-info" data-video="XW2E2Fnh52w">
                    <h3>Wonder Woman 1984</h3>
                    <i class="far fa-3x fa-play-circle"></i>
                </div>
            </div>
            <div class="trailers-grid-item">
                <img src="images/movie-2.jpg" alt="">
                <div class="trailer-item-info" data-video="RxAtuMu_ph4">
                    <h3>Black Widow</h3>
                    <i class="far fa-3x fa-play-circle"></i>
                </div>
            </div>
            <div class="trailers-grid-item">
                <img src="images/movie-3.jpg" alt="">
                <div class="trailer-item-info" data-video="XUN5EEDwHcI">
                    <h3>The Croods: A New Age</h3>
                    <i class="far fa-3x fa-play-circle"></i>
                </div>
            </div>
            <div class="trailers-grid-item">
                <img src="images/movie-4.jpg" alt="">
                <div class="trailer-item-info" data-video="jQ8CCg1tOqc">
                    <h3>#Alive</h3>
                    <i class="far fa-3x fa-play-circle"></i>
                </div>
            </div>
            <div class="trailers-grid-item">
                <img src="images/movie-5.jpg" alt="">
                <div class="trailer-item-info" data-video="aXc9DVfLTGo">
                    <h3>A Whisker Away</h3>
                    <i class="far fa-3x fa-play-circle"></i>
                </div>
            </div>
            <div class="trailers-grid-item">
                <img src="images/movie-6.jpg" alt="">
                <div class="trailer-item-info" data-video="LIU4xb61PHc">
                    <h3>To All the Boys: P.S. I Still Love You</h3>
                    <i class="far fa-3x fa-play-circle"></i>
                </div>
            </div>
        </div>
    </div>

	<div class="wrap">
		<div class="content-top">
				<div class="listview_1_of_3 images_1_of_3">
					<h3>Upcoming Movies</h3>
					<?php 
					$qry3=mysqli_query($con,"select * from tbl_news");
					
					while($n=mysqli_fetch_array($qry3))
					{
					?>
				<div class="content-left">
					<div class="listimg listimg_1_of_2">
						 <img src="admin/<?php echo $n['attachment'];?>">
					</div>
					<div class="text list_1_of_2">
						  <div class="extra-wrap">
						  	<span style="text-color:#000" class="data"><strong><?php echo $n['name'];?></strong><br>
						  	<span style="text-color:#000" class="data"><strong>Cast :<?php echo $n['cast'];?></strong><br>
                                <div class="data">Release Date :<?php echo $n['news_date'];?></div>
                                
                                
                                
                                <span class="text-top"><?php echo $n['description'];?></span>
                          </div>
					</div>
					<div class="clear"></div>
				</div>
				<?php
				}
				?>
				
			
		</div>				
		<div class="listview_1_of_3 images_1_of_3">
					<h3>Trending Trailers</h3>
						<div class="middle-list">
					<?php 
					$qry4=mysqli_query($con,"select * from tbl_movie order by rand() limit 3");
				
					while($nm=mysqli_fetch_array($qry4))
					{
					?>
					
						<div class="listimg1">
							 <a target="_blank" href="<?php echo $nm['video_url'];?>"><img src="<?php echo $nm['image'];?>" alt=""/></a>
							 <a target="_blank" href="<?php echo $nm['video_url'];?>" class="link"><?php echo $nm['movie_name'];?></a>
						</div>
						<?php
					}
					?>
					</div>
		</div>


		<?php include('movie_sidebar.php');?>
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
					



</div>
<?php include('footer.php');?>
</div>
<?php include('searchbar.php');?>