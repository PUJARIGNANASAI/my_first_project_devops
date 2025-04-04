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
            width: 100vw;
            height: 100vh;
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

        /* Popup Animation */
        @keyframes popupAnim {
            0% {
                transform: translateX(-50%) scale(0.5);
                opacity: 0;
            }
            100% {
                transform: translateX(-50%) scale(1);
                opacity: 1;
            }
        }

        .option a::after {
            content: attr(data-popup);
            position: absolute;
            bottom: 110%;
            left: 50%;
            transform: translateX(-50%) scale(0.5);
            background-color: rgba(0, 0, 0, 0.85);
            color: #fff;
            padding: 8px 14px;
            border-radius: 8px;
            white-space: nowrap;
            opacity: 0;
            pointer-events: none;
            transition: opacity 0.2s ease, transform 0.2s ease;
            font-size: 14px;
            z-index: 10;
        }

        .option:hover a::after {
            animation: popupAnim 0.3s ease forwards;
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
            <a href="https://www.zomato.com/" data-popup="Find delicious food near you!">
                <img src="https://www.equentis.com/blog/wp-content/uploads/2024/06/Story-of-The-Zomato-Storytelling-00-01.jpg" alt="Food">
                <p>Explore Food Items</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.theverge.com/tech" data-popup="Stay updated with tech buzz!">
                <img src="https://www.mckinsey.com/spContent/bespoke/tech-trends-2024-hero-nav/techtrends-hero-desktop.jpg" alt="Tech">
                <p>Explore Tech</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.bbc.com/news" data-popup="Catch breaking news stories">
                <img src="https://www.hindustantimes.com/ht-img/img/2024/12/18/550x309/India_6_1734523724131_1734523741441.jpg" alt="News">
                <p>Explore Latest News</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.airbnb.com/" data-popup="Book comfy stays easily!">
                <img src="https://prod-attachments-public.trustedstays.co.uk/blog/JwH1OextmTbAhNRyZ9y9SWeeEuJBRkKYMdjAuDV3.w1890.jpg" alt="Apartments">
                <p>Explore Service Apartments</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.crunchbase.com/" data-popup="Discover trending startups">
                <img src="https://cdn.pixabay.com/photo/2015/01/08/18/27/startup-593341_1280.jpg" alt="Companies">
                <p>Explore Companies</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.makemytrip.com/" data-popup="Plan your journey hassle-free!">
                <img src="https://www.minivanhiredelhi.com/uploads/4473_state-travels-lucknow-1oebkcgrf4.jpg" alt="Bus">
                <p>Book Bus Tickets</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.bookmyshow.com/" data-popup="Watch the latest blockbusters">
                <img src="https://www.animationkolkata.com/blog/wp-content/uploads/2019/01/IMAX-home-theater.jpg" alt="Movies">
                <p>Book Movie Tickets</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.amazon.in/" data-popup="Shop amazing deals now">
                <img src="https://essenceofqatar.com/wp-content/uploads/2020/07/TFS_Article_2019_970x643.jpg" alt="Shopping">
                <p>Explore Shopping</p>
            </a>
        </div>
    </div>

    <div class="footer">
        <p>Owner: Gnanasai Pujari</p>
    </div>
</body>
</html>
