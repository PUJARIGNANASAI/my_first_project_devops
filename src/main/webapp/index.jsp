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
        .option img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            border-radius: 10px;
        }
        .option p {
            margin-top: 10px;
            font-weight: bold;
        }
        .footer {
            margin-top: 30px;
            padding: 15px;
            background: #333;
            color: white;
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
                <img src="https://cdn-icons-png.flaticon.com/512/1046/1046784.png" alt="Explore Food Items">
                <p>Explore Food Items</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.theverge.com/tech">
                <img src="https://cdn-icons-png.flaticon.com/512/1055/1055687.png" alt="Explore Tech">
                <p>Explore Tech</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.bbc.com/news">
                <img src="https://cdn-icons-png.flaticon.com/512/610/610118.png" alt="Explore Latest News">
                <p>Explore Latest News</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.airbnb.com/">
                <img src="https://cdn-icons-png.flaticon.com/512/684/684908.png" alt="Explore Service Apartments">
                <p>Explore Service Apartments</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.crunchbase.com/">
                <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt="Explore Companies">
                <p>Explore Companies</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.makemytrip.com/">
                <img src="https://cdn-icons-png.flaticon.com/512/1946/1946488.png" alt="Book Bus Tickets">
                <p>Book Bus Tickets</p>
            </a>
        </div>
        <div class="option animate__animated animate__fadeInUp">
            <a href="https://www.bookmyshow.com/">
                <img src="https://cdn-icons-png.flaticon.com/512/3094/3094881.png" alt="Book Movie Tickets">
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

