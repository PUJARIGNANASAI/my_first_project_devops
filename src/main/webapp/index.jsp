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
            background: linear-gradient(to bottom right, #fdfbfb, #ebedee);
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
            width: 130px;
            height: 130px;
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
            width: 260px;
            padding: 15px;
            background: white;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            border-radius: 20px;
            transition: transform 0.3s ease;
        }
        .dark-mode .option {
            background: #444;
        }
        .option:hover {
            transform: scale(1.08);
        }
        .option img {
            width: 100%;
            height: 160px;
            object-fit: cover;
            border-radius: 12px;
        }
        .option p {
            margin-top: 12px;
            font-weight: bold;
            font-size: 16px;
        }
        .footer {
            position: fixed;
            right: 20px;
            bottom: 10px;
            color: white;
            font-style: italic;
            background: transparent;
        }
        .footer p {
            font-style: italic;
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
                <img src="https://media.giphy.com/media/xT5LMHxhOfscxPfIfm/giphy.gif" alt="Explore Food Items">
                <p>Explore Food Items</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.theverge.com/tech">
                <img src="https://media.giphy.com/media/dsKnRuALlWsZG/giphy.gif" alt="Explore Tech">
                <p>Explore Tech</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.bbc.com/news">
                <img src="https://media.giphy.com/media/h3cEWrS0W1zvG/giphy.gif" alt="Explore Latest News">
                <p>Explore Latest News</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.airbnb.com/">
                <img src="https://media.giphy.com/media/RJW6nRzRL35vbTt0zG/giphy.gif" alt="Explore Service Apartments">
                <p>Explore Service Apartments</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.crunchbase.com/">
                <img src="https://media.giphy.com/media/XIqCQx02E1U9W/giphy.gif" alt="Explore Companies">
                <p>Explore Companies</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.makemytrip.com/">
                <img src="https://media.giphy.com/media/xT9Igs90EPzE0RZZZq/giphy.gif" alt="Book Bus Tickets">
                <p>Book Bus Tickets</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.bookmyshow.com/">
                <img src="https://media.giphy.com/media/U3qYN8S0j3bpK/giphy.gif" alt="Book Movie Tickets">
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
