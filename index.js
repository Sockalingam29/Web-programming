function submitHandler(event) {
  console.log("Hello Test");
  event.preventDefault();
  var searchQuery = document.querySelector("input[name='searchQuery']").value;
  var xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function () {
    if (xhr.readyState === 4 && xhr.status === 200) {
      // process the response here
      // console.log(xhr.responseText)
      var response = JSON.parse(xhr.responseText);
      console.log(response)
      var productsList = document.createElement("ul");
      response.forEach(function (value) {
        var product = document.createElement("li");
        product.textContent = value + " ";
        productsList.appendChild(product);
      });
      document.getElementById("search-results").innerHTML = ""
      document.getElementById("search-results").appendChild(productsList);
      // document.getElementsByClassName("products-grid").innerHTML = `
      //   <div class="product-item">
      //     <img
      //       src="https://www.aptronixindia.com/media/catalog/product/cache/31f0162e6f7d821d2237f39577122a8a/m/b/mbp14-spacegray-select-202110-removebg-preview.png"
      //       alt="product1" />
      //     <h3>Apple M1 Mac</h3>
      //     <p>Rs 91,999</p>
      //   </div>
      // `;
    }
  };
  xhr.open("GET", "search?searchQuery=" + searchQuery);
  xhr.send();
}

const items = document.querySelectorAll(".product-item");
items.forEach((item) => {
  item.addEventListener("mouseover", () => {
    item.style.cursor = "pointer";
  });
});

$(document).ready(function () {
  $("#dark-mode-icon").click(function () {
    $("body").toggleClass("dark-mode");
    if ($("body").hasClass("dark-mode")) {
      $("body").css("background-color", "#212529");
      $("body").css("color", "white");
      $(".product-item").css(
        "box-shadow",
        "8px 8px 16px #1c1f23,-8px -8px 16px #262b2f"
      );
      $(".product-item").css("border", "1px solid #212529");
    } else {
      $("body").css("background-color", "#f2f2f2");
      $("body").css("color", "black");
      $(".product-item").css("box-shadow", "4px 4px 4px 4px #e4e2e2");
      $(".product-item").css("border", "1px solid #f2f2f2");
    }
  });
});

$(document).ready(function () {
  $("a").mouseenter(function () {
    $(this).css("color", "#fb0");
    $(this).css("font-weight", "900");
  });
  $("a").mouseleave(function () {
    $(this).css("color", "white");
    $(this).css("font-weight", "500");
  });
});
