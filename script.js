document.addEventListener("DOMContentLoaded", function () {
  fetch("products.php")
    .then((response) => response.json())
    .then((data) => {
      const productsContainer = document.getElementById("products");
      data.forEach((product) => {
        const productElement = document.createElement("div");
        productElement.classList.add("product");
        productElement.innerHTML = `
                  <img src="${product.image}" alt="${product.name}">
                  <h3>${product.name}</h3>
                  <p>$${product.price}</p>
              `;
        productsContainer.appendChild(productElement);
      });
    })
    .catch((error) => console.error("Error fetching products:", error));
});
