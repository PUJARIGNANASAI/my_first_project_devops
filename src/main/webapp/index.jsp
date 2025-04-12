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

    /* Left corner options */
    .options-left {
      position: fixed;
      top: 20px;
      left: 20px;
      z-index: 10;
    }

    #backgroundOptionButton {
      font-size: 16px;
      background-color: #333;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    #backgroundOptionButton:hover {
      background-color: #555;
    }

    /* Right corner mute button */
    .controls {
      position: fixed;
      top: 20px;
      right: 20px;
      z-index: 10;
    }

    #muteButton {
      font-size: 16px;
      background-color: #333;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    #muteButton:hover {
      background-color: #555;
    }

    /* Footer */
    .footer {
      position: fixed;
      right: 20px;
      bottom: 20px;
      color: white;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      font-weight: normal;
      font-size: 14px;
      background-color: rgba(0, 0, 0, 0.7);
      padding: 10px 20px;
      border-radius: 5px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.3);
    }

    .footer p {
      margin: 5px 0;
    }

    .footer a {
      color: #00bcd4;
      text-decoration: none;
    }

    .footer a:hover {
      text-decoration: underline;
    }

    audio {
      display: none;
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

    /* Pop animation only on hover */
    @keyframes popUp {
      0% {
        transform: scale(1);
      }
      50% {
        transform: scale(1.08);
      }
      100% {
        transform: scale(1);
      }
    }

    .option:hover {
      animation: popUp 0.4s ease;
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
    }
  </style>
</head>
<body>
  <video class="bg-video" autoplay muted loop>
    <source src="https://www.w3schools.com/html/movie.mp4" type="video/mp4" />
  </video>

  <audio autoplay loop>
    <source src="https://www.bensound.com/bensound-music/bensound-sunny.mp3" type="audio/mpeg" />
  </audio>

  <div class="header">
    <img src="pgslogo.png" alt="PGS Logo" />
    <h1>PGS Navigator</h1>
  </div>

  <div class="options-left">
    <button id="backgroundOptionButton">Background Options</button>
    <div id="backgroundOptionsMenu" style="display:none; background-color: rgba(0,0,0,0.7); padding: 10px; color: white; border-radius: 5px;">
      <button onclick="changeBackground('nature')">Nature</button>
      <button onclick="changeBackground('city')">City</button>
      <button onclick="changeBackground('tech')">Tech</button>
    </div>
  </div>

  <div class="controls">
    <button id="muteButton">Mute</button>
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
    <!-- More options go here -->
  </div>

  <div class="footer">
    <p>Owner: Gnanasai Pujari</p>
    <p>Contact: <a href="mailto:pujarignansai@gmail.com">pujarignansai@gmail.com</a></p>
    <p>&copy; 2025 PGS Navigator. All Rights Reserved.</p>
  </div>

  <script>
    const audio = document.querySelector('audio');
    const muteButton = document.getElementById('muteButton');
    const backgroundOptionButton = document.getElementById('backgroundOptionButton');
    const backgroundOptionsMenu = document.getElementById('backgroundOptionsMenu');

    // Toggle mute functionality
    muteButton.addEventListener('click', () => {
      if (audio.muted) {
        audio.muted = false;
        audio.volume = 1;  // Set to full volume
        muteButton.textContent = "Mute";
      } else {
        audio.muted = true;
        muteButton.textContent = "Unmute";
      }
    });

    // Show/Hide Background Options
    backgroundOptionButton.addEventListener('click', () => {
      backgroundOptionsMenu.style.display = backgroundOptionsMenu.style.display === 'block' ? 'none' : 'block';
    });

    // Change background video
    function changeBackground(videoType) {
      const bgVideo = document.querySelector('.bg-video source');
      if (videoType === 'nature') {
        bgVideo.src = 'https://videos.pexels.com/video-files/2098989/2098989-uhd_2560_1440_30fps.mp4';
      } else if (videoType === 'city') {
        bgVideo.src = 'https://videos.pexels.com/video-files/1826896/1826896-hd_1920_1080_24fps.mp4';
      } else if (videoType === 'tech') {
        bgVideo.src = 'https://videos.pexels.com/video-files/3129957/3129957-uhd_2560_1440_25fps.mp4';
      }
      document.querySelector('.bg-video').load(); // Reload video
    }
  </script>
</body>
</html>
