<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://code.jquery.com/jquery-3.6.3.js"
      integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="home.css" />
    <title>Home</title>
  </head>

  <body>
    <%@ include file="header.jsp" %>

    <form onsubmit="submitHandler(event);">
      <input type="text" name="searchQuery" />
      <button type="submit">Search</button>
    </form>
    <div id="search-results"></div>

    <div class="products-grid">
      <div class="product-item">
        <img
          src="https://www.aptronixindia.com/media/catalog/product/cache/31f0162e6f7d821d2237f39577122a8a/m/b/mbp14-spacegray-select-202110-removebg-preview.png"
          alt="product1"
        />
        <h3>Apple M1 Mac</h3>
        <p>Rs 91,999</p>
      </div>
      <div class="product-item">
        <img
          src="https://www.pngall.com/wp-content/uploads/13/Nothing-Phone-1-PNG-Cutout.png"
          alt="product2"
        />
        <h3>Nothing Phone (1)</h3>
        <p>Rs 31,999</p>
      </div>
      <div class="product-item">
        <img
          src="https://educatehill.com/wp-content/uploads/2023/01/image-114.png"
          alt="product3"
        />
        <h3>Samsung S22 Ultra</h3>
        <p>Rs 84,999</p>
      </div>
      <div class="product-item">
        <img
          src="https://lapgadgets.in/wp-content/uploads/2019/08/green-ssd-sata-family.png.thumb_.1280.1280-1024x1024.png"
          alt="product1"
        />
        <h3>WD SSD combo</h3>
        <p>Rs 6,999</p>
      </div>
      <div class="product-item">
        <img
          src="https://fundamental.in/wp-content/uploads/2021/06/234516_1_wc7roq.png"
          alt="product2"
        />
        <h3>Sony Bravia 40" LED Tv</h3>
        <p>Rs 49,999</p>
      </div>
      <div class="product-item">
        <img
          src="https://image01.realme.net/general/20220711/1657521687391.png"
          alt="product3"
        />
        <h3>Realme watch 3</h3>
        <p>Rs 3,999</p>
      </div>
    </div>
  </body>
  <script src="index.js"></script>
  <script>
    function submitHandler(event) {
      event.preventDefault();
      var searchQuery = document.querySelector(
        "input[name='searchQuery']"
      ).value;
      var xhr = new XMLHttpRequest();
      document.getElementsByClassName("products-grid")[0].innerHTML = "";
      xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
          var response = JSON.parse(xhr.responseText);
          response.forEach(function (value) {
            var product = document.createElement("div");
            product.className = "product-item";
            var productImage = document.createElement("img");
            productImage.src = value.img;
            product.appendChild(productImage);
            var productName = document.createElement("h3");
            productName.textContent = value.name;
            product.appendChild(productName);
            var productPrice = document.createElement("p");
            productPrice.textContent = "Rs " + value.price;
            product.appendChild(productPrice);
            document
              .getElementsByClassName("products-grid")[0]
              .appendChild(product);
          });
        }
      };
      xhr.open("GET", "search?searchQuery=" + searchQuery);
      xhr.send();
    }
  </script>
</html>
