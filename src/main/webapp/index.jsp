<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PGS App</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            transition: background-color 0.3s, color 0.3s;
        }
        .dark-mode {
            background-color: #222;
            color: white;
        }
        .header {
            background: linear-gradient(90deg, #ff7e5f, #feb47b);
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
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
        }
        .search-bar {
            margin: 20px auto;
            padding: 10px;
            width: 50%;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .options {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 20px;
        }
        .option {
            width: 250px;
            margin: 15px;
            padding: 20px;
            background: white;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            border-radius: 10px;
            transition: transform 0.3s, background-color 0.3s;
        }
        .dark-mode .option {
            background: #333;
        }
        .option:hover {
            transform: scale(1.05);
        }
        .footer {
            margin-top: 20px;
            padding: 10px;
            background: #222;
            color: white;
        }
    </style>
</head>
<body>
    <div class="header">
        <img src="https://upload.wikimedia.org/wikipedia/commons/a/a3/PNG_transparency_demonstration_1.png" alt="PGS Logo">
        <h1>PGS App</h1>
        <button class="toggle-btn" onclick="toggleDarkMode()">Dark Mode</button>
    </div>
    
    <input type="text" class="search-bar" placeholder="Search options..." onkeyup="filterOptions()">
    
    <div class="options">
        <div class="option animate__animated animate__fadeIn"><a href="https://www.zomato.com/">Explore Food Items</a></div>
        <div class="option animate__animated animate__fadeIn"><a href="https://www.theverge.com/tech">Explore Tech</a></div>
        <div class="option animate__animated animate__fadeIn"><a href="https://www.bbc.com/news">Explore Latest News</a></div>
        <div class="option animate__animated animate__fadeIn"><a href="https://www.airbnb.com/">Explore Service Apartments</a></div>
        <div class="option animate__animated animate__fadeIn"><a href="https://www.crunchbase.com/">Explore Companies</a></div>
        <div class="option animate__animated animate__fadeIn"><a href="https://www.makemytrip.com/">Book Bus Tickets</a></div>
    </div>

    <div class="footer">
        <p>Owner: Gnanasai Pujari</p>
    </div>

    <script>
        function toggleDarkMode() {
            document.body.classList.toggle("dark-mode");
        }
        function filterOptions() {
            let input = document.querySelector(".search-bar").value.toLowerCase();
            let options = document.querySelectorAll(".option");
            options.forEach(option => {
                if (option.innerText.toLowerCase().includes(input)) {
                    option.style.display = "block";
                } else {
                    option.style.display = "none";
                }
            });
        }
    </script>
</body>
</html>

