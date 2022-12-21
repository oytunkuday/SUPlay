
<html lang="en"><head>
    <meta charset="utf-8">
    <title>Game detail</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body style="">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk=" crossorigin="anonymous">
<div class="container">
    <div class="row">
        <div class="col-md-12">


        <?php
        include "config.php";
        $gameid = $_GET['gameid'];
        $sql_command = "SELECT * FROM game WHERE game_id = $gameid";
        $result =  mysqli_query($db, $sql_command);
        $rows = mysqli_fetch_assoc($result);
            $game_id = $rows['game_id'];
            $name = $rows['name'];
            $avr_rate = $rows['avr_rate'];
            $release_date = $rows['release_date'];
            $time_played = $rows['time_played'];

            $sql_command_for_language = "SELECT game.name, language.language_name FROM language, game, supports WHERE supports.game_id = game.game_id AND language.language_id = supports.language_id AND game.game_id = $game_id";
            $result_languages =  mysqli_query($db, $sql_command_for_language);

            
            $sql_command_for_genre = "SELECT game.name, genre.genre_name FROM genre, game, belongs_to WHERE belongs_to.game_id = game.game_id AND genre.genre_id = belongs_to.genre_id AND game.game_id = $game_id";
            $result_genres =  mysqli_query($db, $sql_command_for_genre);

            $sql_command_for_hardware = "SELECT hardware_requirement.cpu_model, hardware_requirement.gpu_model, hardware_requirement.ram, hardware_requirement.disk_space FROM requires, game, hardware_requirement WHERE game.game_id = $game_id AND game.game_id = requires.game_id AND requires.requirement_id = hardware_requirement.requirement_id";
            $result_hardware =  mysqli_query($db, $sql_command_for_hardware);


            echo  "<div class='project-info-box mt-0'>".
                "<h5>Game details of $name</h5>".
            "</div>".
            "<div class='project-info-box'>".
                "<p><b>Release Date:</b> $release_date</p>".
                "<p><b>Time played:</b> $time_played</p>".
                "<p><b>Average Rate:</b> $avr_rate</p>".
            "</div>".
            "<div class='project-info-box'>";
            while ($rows_languages = mysqli_fetch_assoc($result_languages))
            {
                $language_name = $rows_languages['language_name'];
                echo "<p><b>Supported by</b> $language_name</p>";
            }
            echo "</div>". "<div class='project-info-box'>";
            while ($rows_genres = mysqli_fetch_assoc($result_genres))
            {
                $genre_name = $rows_genres['genre_name'];
                echo "<p><b>Genre: </b> $genre_name</p>";
            }
            echo "</div>". "<div class='project-info-box'>";
            while ($rows_genres = mysqli_fetch_assoc($result_genres))
            {
                $genre_name = $rows_genres['genre_name'];
                echo "<p><b>Genre: </b> $genre_name</p>";
            }
            while ($rows_hardware = mysqli_fetch_assoc($result_hardware))
            {
                $cpu = $rows_hardware['cpu_model'];
                $gpu = $rows_hardware['gpu_model'];
                $ram = $rows_hardware['ram'];
                $disk_space = $rows_hardware['disk_space'];
                echo "<p><b>Cpu: </b> $cpu</p>";
                echo "<p><b>Gpu: </b> $gpu</p>";
                echo "<p><b>RAM: </b> $ram</p>";
                echo "<p><b>Disk Space: </b> $disk_space</p>";
            }
            echo "</div>";


            echo "<div class='project-info-box mt-0 mb-0'>".
                "<a href=usergamelist.php class='mb-0 btn btn-success'>".
                    "Back to user game list".
                "</a>".
            "</div>";
        ?>



        </div>
    </div>
</div>

<style type="text/css">
body{
    background:#f5f5f5;
    margin-top:20px;}
/*------- portfolio -------*/
.project {
  margin: 15px 0;
}

.no-gutter .project {
  margin: 0 !important;
  padding: 0 !important;
}

.has-spacer {
  margin-left: 30px;
  margin-right: 30px;
  margin-bottom: 30px;
}

.has-spacer-extra-space {
  margin-left: 30px;
  margin-right: 30px;
  margin-bottom: 30px;
}

.has-side-spacer {
  margin-left: 30px;
  margin-right: 30px;
}

.project-title {
  font-size: 1.25rem;
}

.project-skill {
  font-size: 0.9rem;
  font-weight: 400;
  letter-spacing: 0.06rem;
}

.project-info-box {
  margin: 15px 0;
  background-color: #fff;
  padding: 30px 40px;
  border-radius: 5px;
}

.project-info-box p {
  margin-bottom: 15px;
  padding-bottom: 15px;
  border-bottom: 1px solid #d5dadb;
}

.project-info-box p:last-child {
  margin-bottom: 0;
  padding-bottom: 0;
  border-bottom: none;
}
img {
    width: 100%;
    max-width: 100%;
    height: auto;
    -webkit-backface-visibility: hidden;
}
.rounded {
    border-radius: 5px !important;
}
.btn-xs.btn-icon {
    width: 34px;
    height: 34px;
    max-width: 34px !important;
    max-height: 34px !important;
    font-size: 10px;
    line-height: 34px;
}
/* facebook button */
.btn-facebook, .btn-facebook:active, .btn-facebook:focus {
  color: #fff !important;
  background: #4e68a1;
  border: 2px solid #4e68a1;
}

.btn-facebook:hover {
  color: #fff !important;
  background: #3b4f7a;
  border: 2px solid #3b4f7a;
}

.btn-facebook-link, .btn-facebook-link:active, .btn-facebook-link:focus {
  color: #4e68a1 !important;
  background: transparent;
  border: none;
}

.btn-facebook-link:hover {
  color: #3b4f7a !important;
}

.btn-outline-facebook, .btn-outline-facebook:active, .btn-outline-facebook:focus {
  color: #4e68a1 !important;
  background: transparent;
  border: 2px solid #4e68a1;
}

.btn-outline-facebook:hover {
  color: #fff !important;
  background: #4e68a1;
  border: 2px solid #4e68a1;
}

/* twitter button */
.btn-twitter, .btn-twitter:active, .btn-twitter:focus {
  color: #fff !important;
  background: #65b5f2;
  border: 2px solid #65b5f2;
}

.btn-twitter:hover {
  color: #fff !important;
  background: #5294c6;
  border: 2px solid #5294c6;
}

.btn-twitter:hover {
  color: #fff !important;
  background: #5294c6;
  border: 2px solid #5294c6;
}

.btn-twitter-link, .btn-twitter-link:active, .btn-twitter-link:focus {
  color: #65b5f2 !important;
  background: transparent;
  border: none;
}

.btn-twitter-link:hover {
  color: #5294c6 !important;
}

.btn-outline-twitter, .btn-outline-twitter:active, .btn-outline-twitter:focus {
  color: #65b5f2 !important;
  background: transparent;
  border: 2px solid #65b5f2;
}

.btn-outline-twitter:hover {
  color: #fff !important;
  background: #65b5f2;
  border: 2px solid #65b5f2;
}

/* google button */
.btn-google, .btn-google:active, .btn-google:focus {
  color: #fff !important;
  background: #e05d4b;
  border: 2px solid #e05d4b;
}

.btn-google:hover {
  color: #fff !important;
  background: #b94c3d;
  border: 2px solid #b94c3d;
}

.btn-google-link, .btn-google-link:active, .btn-google-link:focus {
  color: #e05d4b !important;
  background: transparent;
  border: none;
}

.btn-google-link:hover {
  color: #b94c3d !important;
}

.btn-outline-google, .btn-outline-google:active, .btn-outline-google:focus {
  color: #e05d4b !important;
  background: transparent;
  border: 2px solid #e05d4b;
}

.btn-outline-google:hover {
  color: #fff !important;
  background: #e05d4b;
  border: 2px solid #e05d4b;
}

/* linkedin button */
.btn-linkedin, .btn-linkedin:active, .btn-linkedin:focus {
  color: #fff !important;
  background: #2083bc;
  border: 2px solid #2083bc;
}

.btn-linkedin:hover {
  color: #fff !important;
  background: #186592;
  border: 2px solid #186592;
}

.btn-linkedin-link, .btn-linkedin-link:active, .btn-linkedin-link:focus {
  color: #2083bc !important;
  background: transparent;
  border: none;
}

.btn-linkedin-link:hover {
  color: #186592 !important;
}

.btn-outline-linkedin, .btn-outline-linkedin:active, .btn-outline-linkedin:focus {
  color: #2083bc !important;
  background: transparent;
  border: 2px solid #2083bc;
}

.btn-outline-linkedin:hover {
  color: #fff !important;
  background: #2083bc;
  border: 2px solid #2083bc;
}

/* pinterest button */
.btn-pinterest, .btn-pinterest:active, .btn-pinterest:focus {
  color: #fff !important;
  background: #d2373b;
  border: 2px solid #d2373b;
}

.btn-pinterest:hover {
  color: #fff !important;
  background: #ad2c2f;
  border: 2px solid #ad2c2f;
}

.btn-pinterest-link, .btn-pinterest-link:active, .btn-pinterest-link:focus {
  color: #d2373b !important;
  background: transparent;
  border: none;
}

.btn-pinterest-link:hover {
  color: #ad2c2f !important;
}

.btn-outline-pinterest, .btn-outline-pinterest:active, .btn-outline-pinterest:focus {
  color: #d2373b !important;
  background: transparent;
  border: 2px solid #d2373b;
}

.btn-outline-pinterest:hover {
  color: #fff !important;
  background: #d2373b;
  border: 2px solid #d2373b;
}

/* dribble button */
.btn-dribbble, .btn-dribbble:active, .btn-dribbble:focus {
  color: #fff !important;
  background: #ec5f94;
  border: 2px solid #ec5f94;
}

.btn-dribbble:hover {
  color: #fff !important;
  background: #b4446e;
  border: 2px solid #b4446e;
}

.btn-dribbble-link, .btn-dribbble-link:active, .btn-dribbble-link:focus {
  color: #ec5f94 !important;
  background: transparent;
  border: none;
}

.btn-dribbble-link:hover {
  color: #b4446e !important;
}

.btn-outline-dribbble, .btn-outline-dribbble:active, .btn-outline-dribbble:focus {
  color: #ec5f94 !important;
  background: transparent;
  border: 2px solid #ec5f94;
}

.btn-outline-dribbble:hover {
  color: #fff !important;
  background: #ec5f94;
  border: 2px solid #ec5f94;
}

/* instagram button */
.btn-instagram, .btn-instagram:active, .btn-instagram:focus {
  color: #fff !important;
  background: #4c5fd7;
  border: 2px solid #4c5fd7;
}

.btn-instagram:hover {
  color: #fff !important;
  background: #4252ba;
  border: 2px solid #4252ba;
}

.btn-instagram-link, .btn-instagram-link:active, .btn-instagram-link:focus {
  color: #4c5fd7 !important;
  background: transparent;
  border: none;
}

.btn-instagram-link:hover {
  color: #4252ba !important;
}

.btn-outline-instagram, .btn-outline-instagram:active, .btn-outline-instagram:focus {
  color: #4c5fd7 !important;
  background: transparent;
  border: 2px solid #4c5fd7;
}

.btn-outline-instagram:hover {
  color: #fff !important;
  background: #4c5fd7;
  border: 2px solid #4c5fd7;
}

/* youtube button */
.btn-youtube, .btn-youtube:active, .btn-youtube:focus {
  color: #fff !important;
  background: #e52d27;
  border: 2px solid #e52d27;
}

.btn-youtube:hover {
  color: #fff !important;
  background: #b31217;
  border: 2px solid #b31217;
}

.btn-youtube-link, .btn-youtube-link:active, .btn-youtube-link:focus {
  color: #e52d27 !important;
  background: transparent;
  border: none;
}

.btn-youtube-link:hover {
  color: #b31217 !important;
}

.btn-outline-youtube, .btn-outline-youtube:active, .btn-outline-youtube:focus {
  color: #e52d27 !important;
  background: transparent;
  border: 2px solid #e52d27;
}

.btn-outline-youtube:hover {
  color: #fff !important;
  background: #e52d27;
  border: 2px solid #e52d27;
}
.btn-xs.btn-icon span, .btn-xs.btn-icon i {
    line-height: 34px;
}
.btn-icon.btn-circle span, .btn-icon.btn-circle i {
    margin-top: -1px;
    margin-right: -1px;
}
.btn-icon i {
    margin-top: -1px;
}
.btn-icon span, .btn-icon i {
    display: block;
    line-height: 50px;
}
a.btn, a.btn-social {
    display: inline-block;
}
.mr-5 {
    margin-right: 5px !important;
}
.mb-0 {
    margin-bottom: 0 !important;
}
.btn-facebook, .btn-facebook:active, .btn-facebook:focus {
    color: #fff !important;
    background: #4e68a1;
    border: 2px solid #4e68a1;
}
.btn-circle {
    border-radius: 50% !important;
}
.project-info-box p {
    margin-bottom: 15px;
    padding-bottom: 15px;
    border-bottom: 1px solid #d5dadb;
}
p {
    font-family: "Barlow", sans-serif !important;
    font-weight: 300;
    font-size: 1rem;
    color: #686c6d;
    letter-spacing: 0.03rem;
    margin-bottom: 10px;
}
b, strong {
    font-weight: 700 !important;
}
</style>
</body></html>