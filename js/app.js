document.addEventListener("DOMContentLoaded", () => {
  const app = document.getElementById("app");
  const isLandscape = window.innerWidth >= window.innerHeight;

  const container = document.createElement("div");
  container.className = isLandscape ? "row-layout" : "column-layout";

  const leftBox = document.createElement("div");
  leftBox.className = "box left-box";
  const rightBox = document.createElement("div");
  rightBox.className = "box right-box";

  const listImg = document.createElement("img");
  listImg.src = "assets/images/widgets/ListView.png";
  listImg.alt = "Kategoriya Tanlash";
  listImg.className = "background-img";
  leftBox.appendChild(listImg);

  const leftOverlay = document.createElement("div");
  leftOverlay.className = "overlay left-overlay";
  leftBox.appendChild(leftOverlay);

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

  let grid; // global e'lon

  fetch("data/kategoriyalar.json")
    .then((response) => response.json())
    .then((data) => {
      grid = document.createElement("div");
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
          rightOverlay.innerHTML = "";

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

              leftOverlay.innerHTML = "";

              const backBtnLeft = document.createElement("button");
              backBtnLeft.className = "back-button";
              backBtnLeft.innerHTML = "← Orqaga";
              backBtnLeft.setAttribute("aria-label", "Orqaga qaytish");

              backBtnLeft.addEventListener("click", () => {
                leftOverlay.innerHTML = "";
                leftOverlay.appendChild(grid);
              });

              const subList = document.createElement("div");
              subList.className = "sub-link-list";

              kat.havolalar.forEach((subItem) => {
                const subCard = document.createElement("div");
                subCard.className = "item-card";

                const subImg = document.createElement("img");
                subImg.src = subItem.rasm || "assets/images/widgets/card.png";
                subImg.alt = subItem.sarlavha;

                const subTitle = document.createElement("div");
                subTitle.className = "item-title";
                subTitle.textContent = subItem.sarlavha;

                subCard.appendChild(subImg);
                subCard.appendChild(subTitle);

                subCard.addEventListener("click", () => {
                  console.log("PDF ochish:", subItem.sarlavha);
                  rightOverlay.innerHTML = "";

                  const backBtnRight = document.createElement("button");
                  backBtnRight.className = "back-button";
                  backBtnRight.innerHTML = "← Orqaga";
                  backBtnRight.setAttribute("aria-label", "Orqaga qaytish");

                  backBtnRight.addEventListener("click", () => {
                    rightOverlay.innerHTML = "";
                    rightOverlay.appendChild(backBtn);
                    rightOverlay.appendChild(list);
                  });

                  const pdfFrame = document.createElement("iframe");
                  pdfFrame.src = subItem.link || "assets/documents/sample.pdf";
                  pdfFrame.className = "pdf-frame";

                  rightOverlay.appendChild(backBtnRight);
                  rightOverlay.appendChild(pdfFrame);
                });

                subList.appendChild(subCard);
              });

              leftOverlay.appendChild(backBtnLeft);
              leftOverlay.appendChild(subList);
            });

            list.appendChild(itemCard);
          });

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
