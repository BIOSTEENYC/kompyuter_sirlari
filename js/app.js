document.addEventListener("DOMContentLoaded", () => {
  const app = document.getElementById("app");

  const isLandscape = window.innerWidth >= window.innerHeight;

  const container = document.createElement("div");
  container.className = isLandscape ? "row-layout" : "column-layout";

  const leftBox = document.createElement("div");
  leftBox.className = "box left-box";
  const rightBox = document.createElement("div");
  rightBox.className = "box right-box";

  // Left Box: Grid image + overlay for categories
  const listImg = document.createElement("img");
  listImg.src = "assets/images/widgets/ListView.png";
  listImg.alt = "Kategoriya Tanlash";
  listImg.className = "background-img";
  leftBox.appendChild(listImg);

  const leftOverlay = document.createElement("div");
  leftOverlay.className = "overlay left-overlay";
  leftBox.appendChild(leftOverlay);

  // Right Box: Logo image
  const logoImg = document.createElement("img");
  logoImg.src = "assets/images/widgets/logo.png";
  logoImg.alt = "Logo";
  logoImg.className = "logo-img";
  rightBox.appendChild(logoImg);

  const rightOverlay = document.createElement("div");
  rightOverlay.className = "overlay right-overlay";
  rightBox.appendChild(rightOverlay);

  container.appendChild(leftBox);
  container.appendChild(rightBox);
  app.appendChild(container);
});
