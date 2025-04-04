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
            color: #333;
            text-align: center;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }
        video.bg-video {
            position: fixed;
            top: 0;
            left: 0;
            min-width: 100%;
            min-height: 100%;
            z-index: -1;
            object-fit: cover;
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
            width: 50px;
            height: auto;
        }
        .header h1 {
            font-size: 18px;
            margin: 0;
        }
        .options {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 40px;
            gap: 30px;
        }
        .option {
            width: 300px;
            background: rgba(255, 255, 255, 0.9);
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            border-radius: 20px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            overflow: hidden;
            position: relative;
        }
        .option:hover {
            transform: scale(1.08);
            box-shadow: 0 6px 20px rgba(0,0,0,0.3);
        }
        .option img {
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
            font-style: normal;
            font-family: 'Courier New', Courier, monospace;
            font-weight: bold;
        }
        audio {
            display: none;
        }
    </style>
</head>
<body>
    <video class="bg-video" autoplay muted loop>
        <source src="homepage.mp4" type="video/mp4">
    </video>

    <audio autoplay loop>
        <source src="https://www.bensound.com/bensound-music/bensound-sunny.mp3" type="audio/mpeg">
    </audio>

    <div class="header">
        <img src="pgslogo.png" alt="PGS Logo">
        <h1>PGS Navigator</h1>
    </div>

    <div class="options">
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.zomato.com/">
                <img src="https://cdn.pixabay.com/photo/2017/05/07/08/56/breakfast-2290161_1280.jpg" alt="Food">
                <p>Explore Food Items</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.theverge.com/tech">
                <img src="https://cdn.pixabay.com/photo/2017/06/13/22/42/laptop-2408371_1280.jpg" alt="Tech">
                <p>Explore Tech</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.bbc.com/news">
                <img src="https://cdn.pixabay.com/photo/2016/11/29/05/08/abstract-1868720_1280.jpg" alt="News">
                <p>Explore Latest News</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.airbnb.com/">
                <img src="https://cdn.pixabay.com/photo/2017/08/06/11/22/living-room-2593570_1280.jpg" alt="Apartments">
                <p>Explore Service Apartments</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.crunchbase.com/">
                <img src="https://cdn.pixabay.com/photo/2015/01/08/18/27/startup-593341_1280.jpg" alt="Companies">
                <p>Explore Companies</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.redbus.in/">
                <img src="https://cdn.pixabay.com/photo/2016/02/16/20/40/bus-1208205_1280.jpg" alt="Bus">
                <p>Book Bus Tickets</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.bookmyshow.com/">
                <img src="https://cdn.pixabay.com/photo/2016/11/22/23/51/cinema-1851090_1280.jpg" alt="Movies">
                <p>Book Movie Tickets</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.amazon.in/">
                <img src="https://cdn.pixabay.com/photo/2017/08/07/00/53/shopping-2594687_1280.jpg" alt="Shopping">
                <p>Explore Shopping</p>
            </a>
        </div>
    </div>

    <div class="footer">
        <p>Owner: Gnanasai Pujari</p>
    </div>
</body>
</html>
