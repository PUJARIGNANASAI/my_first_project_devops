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
            background: linear-gradient(to right, #f3f9ff, #ffffff);
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
            width: 250px;
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
        .option iframe {
            width: 100%;
            height: 200px;
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
                <iframe src="https://www.youtube.com/embed/0QmMF_hL9v8?autoplay=1&mute=1&loop=1&playlist=0QmMF_hL9v8" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                <p>Explore Food Items</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.theverge.com/tech">
                <iframe src="https://www.youtube.com/embed/f1x9lgX8GaE?autoplay=1&mute=1&loop=1&playlist=f1x9lgX8GaE" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                <p>Explore Tech</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.bbc.com/news">
                <iframe src="https://www.youtube.com/embed/NLZRYQMLDW4?autoplay=1&mute=1&loop=1&playlist=NLZRYQMLDW4" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                <p>Explore Latest News</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.airbnb.com/">
                <iframe src="https://www.youtube.com/embed/qvH3x8jPbc4?autoplay=1&mute=1&loop=1&playlist=qvH3x8jPbc4" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                <p>Explore Service Apartments</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.crunchbase.com/">
                <iframe src="https://www.youtube.com/embed/W2OiS6vOe94?autoplay=1&mute=1&loop=1&playlist=W2OiS6vOe94" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                <p>Explore Companies</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.makemytrip.com/">
                <iframe src="https://www.youtube.com/embed/ivvGZoS4LtQ?autoplay=1&mute=1&loop=1&playlist=ivvGZoS4LtQ" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                <p>Book Bus Tickets</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.bookmyshow.com/">
                <iframe src="https://www.youtube.com/embed/YRt-QKmtaWk?autoplay=1&mute=1&loop=1&playlist=YRf-QKmtaWk" allow="autoplay; encrypted-media" allowfullscreen></iframe>
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
