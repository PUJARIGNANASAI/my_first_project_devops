<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>PGS Navigator</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
  <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
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
      object-fit: cover;
      z-index: -1;
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
      overflow: hidden;
      position: relative;
      transition: box-shadow 0.3s ease;
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
      left: 0;
      bottom: 0;
      width: 100%;
      background-color: rgba(0,0,0,0.6);
      color: white;
      font-family: 'Pacifico', cursive;
      font-size: 14px;
      padding: 8px 0;
    }

    audio {
      display: none;
    }

    @keyframes popUp {
      0% { transform: scale(1); }
      50% { transform: scale(1.08); }
      100% { transform: scale(1); }
    }

    .option:hover {
      animation: popUp 0.4s ease;
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
    }

    #muteToggle, #bgSelector {
      position: fixed;
      z-index: 2;
      right: 20px;
      padding: 10px;
      border-radius: 8px;
      background: rgba(0,0,0,0.6);
      color: white;
      border: none;
      cursor: pointer;
    }

    #muteToggle {
      top: 20px;
    }

    #bgSelector {
      top: 70px;
      color: black;
    }
  </style>
</head>
<body>
  <video class="bg-video" autoplay muted loop>
    <source src="https://www.videvo.net/videvo_files/converted/2014_08/preview/Clouds_Timelapse1Videvo.mov81595.mp4" type="video/mp4" />
    Your browser does not support the video tag.
  </video>

  <audio autoplay loop>
    <source src="https://www.bensound.com/bensound-music/bensound-sunny.mp3" type="audio/mpeg" />
  </audio>

  <button id="muteToggle">🔊 Mute</button>

  <select id="bgSelector">
    <option value="nature">Nature</option>
    <option value="city">City</option>
    <option value="tech">Tech</option>
  </select>

  <div class="header">
    <img src="pgslogo.png" alt="PGS Logo" />
    <h1>PGS Navigator</h1>
  </div>

  <div class="options">
    <div class="option">
      <a href="https://www.zomato.com/" target="_blank">
        <img src="https://www.equentis.com/blog/wp-content/uploads/2024/06/Story-of-The-Zomato-Storytelling-00-01.jpg" alt="Food" />
        <p>Explore Food Items</p>
      </a>
    </div>
    <div class="option">
      <a href="https://www.theverge.com/tech" target="_blank">
        <img src="https://www.mckinsey.com/spContent/bespoke/tech-trends-2024-hero-nav/techtrends-hero-desktop.jpg" alt="Tech" />
        <p>Explore Tech</p>
      </a>
    </div>
    <div class="option">
      <a href="https://www.bbc.com/news" target="_blank">
        <img src="https://www.hindustantimes.com/ht-img/img/2024/12/18/550x309/India_6_1734523724131_1734523741441.jpg" alt="News" />
        <p>Explore Latest News</p>
      </a>
    </div>
    <div class="option">
      <a href="https://www.airbnb.com/" target="_blank">
        <img src="https://prod-attachments-public.trustedstays.co.uk/blog/JwH1OextmTbAhNRyZ9y9SWeeEuJBRkKYMdjAuDV3.w1890.jpg" alt="Apartments" />
        <p>Explore Service Apartments</p>
      </a>
    </div>
    <div class="option">
      <a href="https://www.crunchbase.com/" target="_blank">
        <img src="https://cdn.pixabay.com/photo/2015/01/08/18/27/startup-593341_1280.jpg" alt="Companies" />
        <p>Explore Companies</p>
      </a>
    </div>
    <div class="option">
      <a href="https://www.makemytrip.com/" target="_blank">
        <img src="https://www.minivanhiredelhi.com/uploads/4473_state-travels-lucknow-1oebkcgrf4.jpg" alt="Bus" />
        <p>Book Bus Tickets</p>
      </a>
    </div>
    <div class="option">
      <a href="https://www.bookmyshow.com/" target="_blank">
        <img src="https://www.animationkolkata.com/blog/wp-content/uploads/2019/01/IMAX-home-theater.jpg" alt="Movies" />
        <p>Book Movie Tickets</p>
      </a>
    </div>
    <div class="option">
      <a href="https://www.amazon.in/" target="_blank">
        <img src="https://essenceofqatar.com/wp-content/uploads/2020/07/TFS_Article_2019_970x643.jpg" alt="Shopping" />
        <p>Explore Shopping</p>
      </a>
    </div>
  </div>

  <div class="footer">
    <p>Owner: Gnanasai Pujari | Email: pujarignanasai@gmail.com | Contact: +91-8500293902</p>
    <p>&copy; 2025 PGS Navigator. All rights reserved.</p>
  </div>

  <script>
    const audio = document.querySelector("audio");
    const muteBtn = document.getElementById("muteToggle");
    const bgVideo = document.querySelector(".bg-video");
    const videoSource = bgVideo.querySelector("source");
    const bgSelector = document.getElementById("bgSelector");

    // Mute/Unmute Toggle
    muteBtn.addEventListener("click", () => {
      audio.muted = !audio.muted;
      muteBtn.textContent = audio.muted ? "🔇 Unmute" : "🔊 Mute";
    });

    // Change Background Video
    const videoURLs = {
      nature: "https://www.videvo.net/videvo_files/converted/2014_08/preview/Clouds_Timelapse1Videvo.mov81595.mp4",
      city: "https://cdn.videvo.net/videvo_files/video/premium/video0030/small_watermarked/03_Manhattan_Night_Skyline_preview.webm",
      tech: "https://cdn.videvo.net/videvo_files/video/premium/video0014/small_watermarked/Technology_Network_02_preview.webm"
    };

    bgSelector.addEventListener("change", (e) => {
      const selected = e.target.value;
      videoSource.src = videoURLs[selected];
      bgVideo.load();
      bgVideo.play();
    });
  </script>
</body>
</html>
