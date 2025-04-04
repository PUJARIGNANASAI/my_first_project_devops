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
            background: linear-gradient(to bottom right, #f0f8ff, #e6f7ff);
            color: #333;
            text-align: center;
        }
        .dark-mode {
            background-color: #222;
            color: white;
        }
        .header {
            background: linear-gradient(to right, #0072ff, #00c6ff);
            padding: 20px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .header img {
            width: 50px;
            height: 50px;
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
            margin-top: 30px;
        }
        .option {
            width: 250px;
            margin: 15px;
            padding: 15px;
            background: white;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
            border-radius: 15px;
            transition: transform 0.3s ease;
        }
        .dark-mode .option {
            background: #444;
        }
        .option:hover {
            transform: scale(1.07);
        }
        .footer {
            margin-top: 30px;
            padding: 15px;
            background: #333;
            color: white;
        }
        .option img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <div class="header">
        <img src="pgslogo.png" alt="PGS Logo">
        <h1>PGS App</h1>
        <button class="toggle-btn" onclick="toggleDarkMode()">Dark Mode</button>
    </div>
    
    <div class="options">
        <div class="option animate__animated animate__pulse">
            <a href="https://www.zomato.com/">
                <img src="https://media.giphy.com/media/f9k1tV7HyORcngKF8v/giphy.gif" alt="Explore Food Items">
            </a>
        </div>
        <div class="option animate__animated animate__pulse">
            <a href="https://www.theverge.com/tech">
                <img src="https://media.giphy.com/media/XI3NTy1I0U5LO/giphy.gif" alt="Explore Tech">
            </a>
        </div>
        <div class="option animate__animated animate__pulse">
            <a href="https://www.bbc.com/news">
                <img src="https://media.giphy.com/media/3o7aD2saalBwwftBIY/giphy.gif" alt="Explore Latest News">
            </a>
        </div>
        <div class="option animate__animated animate__pulse">
            <a href="https://www.airbnb.com/">
                <img src="https://media.giphy.com/media/26Ff6BS9EjhBv2d1u/giphy.gif" alt="Explore Service Apartments">
            </a>
        </div>
        <div class="option animate__animated animate__pulse">
            <a href="https://www.crunchbase.com/">
                <img src="https://media.giphy.com/media/3o7btNRTQDw8PNCz2s/giphy.gif" alt="Explore Companies">
            </a>
        </div>
        <div class="option animate__animated animate__pulse">
            <a href="https://www.makemytrip.com/">
                <img src="https://media.giphy.com/media/xT0GqcV5M9O3LJnT7q/giphy.gif" alt="Book Bus Tickets">
            </a>
        </div>
        <div class="option animate__animated animate__pulse">
            <a href="https://www.bookmyshow.com/">
                <img src="https://media.giphy.com/media/l4FGwHEUCGILzM6BO/giphy.gif" alt="Book Movie Tickets">
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

