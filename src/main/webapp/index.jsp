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
            background: linear-gradient(to right, #dfe9f3, #ffffff);
            color: #333;
            text-align: center;
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .dark-mode {
            background-color: #222;
            color: white;
        }
        .header {
            background: black;
            padding: 20px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
        }
        .header img {
            width: 300px;
            height: auto;
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
            padding: 0;
            background: white;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            border-radius: 20px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            overflow: hidden;
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
        }
        .footer {
            position: fixed;
            right: 20px;
            bottom: 10px;
            color: white;
            font-style: italic;
            background: transparent;
        }
    </style>
</head>
<body>
    <div class="header">
        <img src="pgslogo.png" alt="PGS Logo">
        <h1>PGS Navigator</h1>
        <button class="toggle-btn" onclick="toggleDarkMode()">Dark Mode</button>
    </div>

    <div class="options">
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.zomato.com/">
                <video autoplay muted loop>
                    <source src="https://player.vimeo.com/external/374873902.sd.mp4?s=9e41e66df193ab2473ed4e2e29b43064f26e5cc4&profile_id=164" type="video/mp4">
                </video>
                <p>Explore Food Items</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.theverge.com/tech">
                <video autoplay muted loop>
                    <source src="https://player.vimeo.com/external/428084599.sd.mp4?s=38b191a3d46f10c0f31263fa6d3b70e859c9d9a5&profile_id=164" type="video/mp4">
                </video>
                <p>Explore Tech</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.bbc.com/news">
                <video autoplay muted loop>
                    <source src="https://player.vimeo.com/external/334122728.sd.mp4?s=6073a7f0546479e2ef1e80f11b1ff3b8d28faeae&profile_id=164" type="video/mp4">
                </video>
                <p>Explore Latest News</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.airbnb.com/">
                <video autoplay muted loop>
                    <source src="https://player.vimeo.com/external/324619002.sd.mp4?s=ec29d03d7dce0d5f9138b2a86ac0e03d623b8b63&profile_id=164" type="video/mp4">
                </video>
                <p>Explore Service Apartments</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.crunchbase.com/">
                <video autoplay muted loop>
                    <source src="https://player.vimeo.com/external/352891783.sd.mp4?s=c45286adfd0860b1c2ed92e98284b7d042d152a4&profile_id=164" type="video/mp4">
                </video>
                <p>Explore Companies</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.makemytrip.com/">
                <video autoplay muted loop>
                    <source src="https://player.vimeo.com/external/462208153.sd.mp4?s=570f5d327f7b9f81e10f91618826f77a8b2a4a63&profile_id=164" type="video/mp4">
                </video>
                <p>Book Bus Tickets</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.bookmyshow.com/">
                <video autoplay muted loop>
                    <source src="https://player.vimeo.com/external/426365504.sd.mp4?s=b3e15188cf3a3787e64e1078597bb90221f4f14b&profile_id=164" type="video/mp4">
                </video>
                <p>Book Movie Tickets</p>
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
