<!DOCTYPE html>
<html>
<head>
    <title>Welcome to PGS Web App</title>
    <style>
        body {
            background: linear-gradient(to right, #f9f9f9, #e0f7fa);
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #004d40;
            padding: 1rem;
            display: flex;
            align-items: center;
            color: white;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
        }

        header img {
            height: 40px;
            margin-right: 10px;
        }

        h1 {
            font-size: 2.5rem;
            text-align: center;
            margin: 1.5rem 0;
            animation: fadeIn 1s ease-in-out;
        }

        .options-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin: 2rem;
        }

        .option-card {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            width: 250px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            animation: slideUp 0.8s ease;
        }

        .option-card:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
        }

        .option-card img {
            width: 100%;
            height: 160px;
            object-fit: cover;
        }

        .option-card a {
            text-decoration: none;
            color: #00695c;
            display: block;
            padding: 1rem;
            font-weight: bold;
        }

        footer {
            text-align: right;
            padding: 1rem;
            font-size: 0.9rem;
            color: #777;
        }

        /* Animations */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes slideUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>

<header>
    <img src="https://cdn-icons-png.flaticon.com/512/2936/2936881.png" alt="PGS Logo">
    <h2>PGS Web App</h2>
</header>

<h1>Explore</h1>

<div class="options-container">
    <div class="option-card">
        <img src="https://images.unsplash.com/photo-1600891964599-f61ba0e24092" alt="Food">
        <a href="https://www.zomato.com" target="_blank">Explore Food Items</a>
    </div>
    <div class="option-card">
        <img src="https://images.unsplash.com/photo-1518770660439-4636190af475" alt="Tech">
        <a href="https://techcrunch.com/" target="_blank">Explore Tech</a>
    </div>
    <div class="option-card">
        <img src="https://images.unsplash.com/photo-1533750349088-cd871a92f312" alt="News">
        <a href="https://news.google.com" target="_blank">Explore Latest News</a>
    </div>
    <div class="option-card">
        <img src="https://images.unsplash.com/photo-1580657018956-7ba9c6e4c3da" alt="Apartments">
        <a href="https://www.magicbricks.com" target="_blank">Explore Service Apartments</a>
    </div>
    <div class="option-card">
        <img src="https://images.unsplash.com/photo-1504384308090-c894fdcc538d" alt="Companies">
        <a href="https://www.linkedin.com/company/" target="_blank">Explore Companies</a>
    </div>
</div>

<footer>
    &copy; 2025 Created by Gnanasai Pujari
</footer>

</body>
</html>

