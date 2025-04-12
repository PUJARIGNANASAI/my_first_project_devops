<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Interactive Dashboard</title>
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
      right: 0;
      bottom: 0;
      min-width: 100%;
      min-height: 100%;
      object-fit: cover;
      z-index: -1;
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

    .controls button {
      padding: 5px 10px;
      font-size: 14px;
      cursor: pointer;
      background-color: white;
      border: none;
      border-radius: 5px;
    }

    .controls select {
      padding: 5px;
      font-size: 14px;
      border-radius: 5px;
      border: none;
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

  <!-- Controls bottom-left -->
  <div class="controls">
    <select id="bgSelect">
      <option value="nature">Nature</option>
      <option value="city">City</option>
      <option value="tech">Tech</option>
      <option value="beach">Beach</option>
    </select>
    <button id="audioToggle">Mute</button>
  </div>

  <!-- Main content grid -->
  <div class="options">
    <div class="option">
      <a href="https://www.zomato.com/" target="_blank" aria-label="Explore Food Items on Zomato">
        <img src="https://www.equentis.com/blog/wp-content/uploads/2024/06/Story-of-The-Zomato-Storytelling-00-01.jpg" alt="Food" />
        <p>Explore Food Items</p>
      </a>
    </div>
    <div class="option">
      <a href="https://www.theverge.com/tech" target="_blank" aria-label="Explore Tech News on The Verge">
        <img src="https://www.mckinsey.com/spContent/bespoke/tech-trends-2024-hero-nav/techtrends-hero-desktop.jpg" alt="Tech" />
        <p>Explore Tech</p>
      </a>
    </div>
    <div class="option">
      <a href="https://www.bbc.com/news" target="_blank" aria-label="Explore Latest News on BBC">
        <img src="https://www.hindustantimes.com/ht-img/img/2024/12/18/550x309/India_6_1734523724131_1734523741441.jpg" alt="News" />
        <p>Explore Latest News</p>
      </a>
    </div>
    <div class="option">
      <a href="https://www.airbnb.com/" target="_blank" aria-label="Explore Service Apartments on Airbnb">
        <img src="https://prod-attachments-public.trustedstays.co.uk/blog/JwH1OextmTbAhNRyZ9y9SWeeEuJBRkKYMdjAuDV3.w1890.jpg" alt="Apartments" />
        <p>Explore Service Apartments</p>
      </a>
    </div>
    <div class="option">
      <a href="https://www.crunchbase.com/" target="_blank" aria-label="Explore Companies on Crunchbase">
        <img src="https://cdn.pixabay.com/photo/2015/01/08/18/27/startup-593341_1280.jpg" alt="Companies" />
        <p>Explore Companies</p>
      </a>
    </div>
    <div class="option">
      <a href="https://www.makemytrip.com/" target="_blank" aria-label="Book Bus Tickets on MakeMyTrip">
        <img src="https://www.minivanhiredelhi.com/uploads/4473_state-travels-lucknow-1oebkcgrf4.jpg" alt="Bus" />
        <p>Book Bus Tickets</p>
      </a>
    </div>
    <div class="option">
      <a href="https://www.bookmyshow.com/" target="_blank" aria-label="Book Movie Tickets on BookMyShow">
        <img src="https://www.animationkolkata.com/blog/wp-content/uploads/2019/01/IMAX-home-theater.jpg" alt="Movies" />
        <p>Book Movie Tickets</p>
      </a>
    </div>
    <div class="option">
      <a href="https://www.amazon.in/" target="_blank" aria-label="Explore Shopping on Amazon India">
        <img src="https://essenceofqatar.com/wp-content/uploads/2020/07/TFS_Article_2019_970x643.jpg" alt="Shopping" />
        <p>Explore Shopping</p>
      </a>
    </div>
  </div>

  <!-- JS for video and audio control -->
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
