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

  // Kategoriyalarni yuklash
  fetch("data/kategoriyalar.json")
    .then((response) => response.json())
    .then((data) => {
      const grid = document.createElement("div");
      grid.className = "category-grid";

      data.Kategoriyalar.forEach((kat) => {
        const card = document.createElement("div");
        card.className = "category-card";

        const img = document.createElement("img");
        img.src = kat.rasm || "assets/images/widgets/card.png";
        img.alt = kat.nomi;

        const title = document.createElement("div");
        title.className = "category-card-title";
        title.textContent = kat.nomi;

        card.appendChild(img);
        card.appendChild(title);

        card.addEventListener("click", () => {
  console.log("Tanlangan kategoriya:", kat.nomi);

  // O'ng panelni tozalaymiz (logo yo'qoladi)
  rightOverlay.innerHTML = "";

  // Havolalarni card ko‘rinishida ko‘rsatamiz
  const list = document.createElement("div");
  list.className = "link-list";

  kat.havolalar.forEach((item) => {
    const itemCard = document.createElement("div");
    itemCard.className = "item-card";

    const itemImg = document.createElement("img");
    itemImg.src = item.rasm || "assets/images/widgets/card.png";
    itemImg.alt = item.sarlavha;

    const itemTitle = document.createElement("div");
    itemTitle.className = "item-title";
    itemTitle.textContent = item.sarlavha;

    itemCard.appendChild(itemImg);
    itemCard.appendChild(itemTitle);

    itemCard.addEventListener("click", () => {
      console.log("Tanlangan havola:", item.sarlavha);
      // Bu yerga navbatdagi qadam — chap panelda ro'yxat, o'ngda PDF
    });

    list.appendChild(itemCard);
  });

  // Orqaga qaytish tugmasi
  const backBtn = document.createElement("button");
  backBtn.className = "back-button";
  backBtn.innerHTML = "← Orqaga";
  backBtn.setAttribute("aria-label", "Orqaga qaytish");

  backBtn.addEventListener("click", () => {
    rightOverlay.innerHTML = "";
    rightOverlay.appendChild(logoImg);
  });

  rightOverlay.appendChild(backBtn);
  rightOverlay.appendChild(list);
});


        grid.appendChild(card);
      });

      leftOverlay.appendChild(grid);
    })
    .catch((err) => {
      leftOverlay.textContent = "Kategoriyalarni yuklab bo'lmadi.";
      console.error("JSON yuklashda xatolik:", err);
    });
});
