<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>PGS Navigator</title>
  <style>
    body, html {
      margin: 0;
      padding: 0;
      height: 100%;
      overflow: hidden;
      font-family: Arial, sans-serif;
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

    header {
      display: flex;
      align-items: center;
      padding: 0.5rem 1rem;
      background: rgba(0, 0, 0, 0.4);
      color: white;
      position: relative;
      z-index: 2;
    }

    header img {
      height: 40px;
      margin-right: 1rem;
    }

    header h1 {
      font-size: 1.8rem;
      margin: 0;
      text-shadow: 2px 2px 4px rgba(0,0,0,0.6);
    }

    .options {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 20px;
      padding: 1rem;
      position: relative;
      z-index: 2;
    }

    .option a {
      display: block;
      text-decoration: none;
      color: inherit;
      transition: transform 0.3s ease;
    }

    .option a:hover {
      transform: scale(1.05);
    }

    .option img {
      width: 100%;
      height: 140px;
      object-fit: cover;
      border-radius: 12px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
    }

    .option p {
      text-align: center;
      font-weight: bold;
      margin-top: 0.5rem;
      color: white;
      text-shadow: 0 1px 3px rgba(0,0,0,0.7);
    }

    .controls {
      position: fixed;
      bottom: 10px;
      left: 10px;
      display: flex;
      flex-direction: column;
      gap: 8px;
      z-index: 10;
      background: rgba(0,0,0,0.4);
      padding: 10px;
      border-radius: 10px;
    }

    .controls button, .controls select {
      padding: 5px 10px;
      font-size: 14px;
      cursor: pointer;
      border: none;
      border-radius: 5px;
    }

    footer {
      position: fixed;
      bottom: 0;
      width: 100%;
      display: flex;
      justify-content: space-between;
      background: rgba(0, 0, 0, 0.5);
      color: white;
      font-size: 14px;
      padding: 8px 12px;
      z-index: 5;
    }

    .footer-left {
      font-weight: 500;
    }

    .footer-right {
      font-size: 11px;
      opacity: 0.8;
    }

    @media (max-width: 600px) {
      header h1 {
        font-size: 1.3rem;
      }
      header img {
        height: 30px;
      }
    }
  </style>
</head>
<body>

  <!-- Background video -->
  <video class="bg-video" id="bgVideo" autoplay muted loop>
    <source src="https://videos.pexels.com/video-files/2098989/2098989-uhd_2560_1440_30fps.mp4" type="video/mp4" />
  </video>

  <!-- Background audio -->
  <audio id="bgAudio" loop autoplay>
    <source src="https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3" type="audio/mp3" />
  </audio>

  <!-- Header with logo -->
  <header>
    <img src="pgslogo.png" alt="PGS Logo" />
    <h1>PGS Navigator</h1>
  </header>

  <!-- Controls -->
  <div class="controls">
    <select id="bgSelect">
      <option value="nature">Nature</option>
      <option value="city">City</option>
      <option value="tech">Tech</option>
      <option value="beach">Beach</option>
    </select>
    <button id="audioToggle">Mute</button>
  </div>

  <!-- Content grid -->
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

  <!-- Footer -->
  <footer>
    <div class="footer-left">
      Owner: Pujari Gnana Sai | 📧 pujarignanasai@gmail.com | 📞 +91-8500293902 |
      © 2025 PGS Navigator. All rights reserved.
    </div>
  </footer>

  <!-- JS -->
  <script>
    const bgVideo = document.getElementById("bgVideo");
    const bgAudio = document.getElementById("bgAudio");
    const audioToggle = document.getElementById("audioToggle");
    const bgSelect = document.getElementById("bgSelect");

    const videoSources = {
      nature: "https://videos.pexels.com/video-files/2098989/2098989-uhd_2560_1440_30fps.mp4",
      city: "https://videos.pexels.com/video-files/1826896/1826896-hd_1920_1080_24fps.mp4",
      tech: "https://videos.pexels.com/video-files/3129957/3129957-uhd_2560_1440_25fps.mp4",
      beach: "https://videos.pexels.com/video-files/1409899/1409899-uhd_2560_1440_25fps.mp4"
    };

    bgSelect.addEventListener("change", () => {
      const selected = bgSelect.value;
      bgVideo.src = videoSources[selected];
      bgVideo.load();
      bgVideo.play();
    });

    audioToggle.addEventListener("click", () => {
      bgAudio.muted = !bgAudio.muted;
      audioToggle.textContent = bgAudio.muted ? "Unmute" : "Mute";
    });
  </script>

</body>
</html>
