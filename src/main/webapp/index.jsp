<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PGS Navigator</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #f1f4f9, #d3dde7);
            color: #333;
            text-align: center;
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .dark-mode {
            background-color: #121212;
            color: white;
        }
        .header {
            background: black;
            padding: 10px 20px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
        }
        .header img {
            width: 100px;
            height: auto;
        }
        .header h1 {
            font-size: 24px;
            margin: 0;
        }
        .toggle-btn {
            cursor: pointer;
            background: white;
            color: #0072ff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
        }
        .options {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 40px;
            gap: 30px;
        }
        .option {
            width: 320px;
            background: white;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            border-radius: 20px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            overflow: hidden;
            position: relative;
        }
        .dark-mode .option {
            background: #444;
        }
        .option:hover {
            transform: scale(1.08);
            box-shadow: 0 6px 20px rgba(0,0,0,0.3);
        }
        .option video {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border: none;
        }
        .option p {
            margin: 10px 0;
            font-weight: bold;
            font-size: 18px;
            color: #000;
        }
        .footer {
            position: fixed;
            right: 20px;
            bottom: 10px;
            color: black;
        }
        audio {
            display: none;
        }
    </style>
</head>
<body>
    <audio autoplay loop>
        <source src="https://www.bensound.com/bensound-music/bensound-sunny.mp3" type="audio/mpeg">
    </audio>
    <div class="header">
        <img src="pgslogo.png" alt="PGS Logo">
        <h1>PGS Navigator</h1>
        <button class="toggle-btn" onclick="toggleDarkMode()">Dark Mode</button>
    </div>

    <div class="options">
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.zomato.com/">
                <video autoplay muted loop>
                    <source src="https://videos.pexels.com/video-files/6758792/6758792-hd_1280_720_25fps.mp4" type="video/mp4">
                </video>
                <p>Explore Food Items</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.theverge.com/tech">
                <video autoplay muted loop>
                    <source src="https://videos.pexels.com/video-files/4976156/4976156-hd_1280_720_25fps.mp4" type="video/mp4">
                </video>
                <p>Explore Tech</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.bbc.com/news">
                <video autoplay muted loop>
                    <source src="https://cdn.coverr.co/videos/coverr-news-coverage-5948/1080p.mp4" type="video/mp4">
                </video>
                <p>Explore Latest News</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.airbnb.com/">
                <video autoplay muted loop>
                    <source src="https://videos.pexels.com/video-files/2952862/2952862-hd_1280_720_25fps.mp4" type="video/mp4">
                </video>
                <p>Explore Service Apartments</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.crunchbase.com/">
                <video autoplay muted loop>
                    <source src="https://cdn.coverr.co/videos/coverr-office-meeting-8759/1080p.mp4" type="video/mp4">
                </video>
                <p>Explore Companies</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.redbus.in/">
                <video autoplay muted loop>
                    <source src="https://videos.pexels.com/video-files/5617710/5617710-hd_1280_720_25fps.mp4" type="video/mp4">
                </video>
                <p>Book Bus Tickets</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.bookmyshow.com/">
                <video autoplay muted loop>
                    <source src="https://cdn.coverr.co/videos/coverr-popcorn-theater-9582/1080p.mp4" type="video/mp4">
                </video>
                <p>Book Movie Tickets</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.flipkart.com/">
                <video autoplay muted loop>
                    <source src="https://cdn.coverr.co/videos/coverr-shopping-bags-9182/1080p.mp4" type="video/mp4">
                </video>
                <p>Explore Shopping</p>
            </a>
        </div>
    </div>

    <div class="footer">
        <p>Owner: Gnanasai Pujari</p>
    </div>

    <script>
        function toggleDarkMode() {
            document.body.classList.toggle("dark-mode");
        }
    </script>
</body>
</html>
