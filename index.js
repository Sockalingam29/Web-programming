function submitHandler(event){
  event.preventDefault
}

const items = document.querySelectorAll(".product-item");
items.forEach((item) => {
  item.addEventListener("mouseover", () => {
    item.style.cursor = "pointer";
  });
});

// $(document).ready(function() {
//   $(document).on('submit', '#search-form', function() {
//     // do your things
//     return false;
//    });
// });

// $("#search-form").submit(function (e) {
//   console.log("Hello");
//   e.preventDefault(); // prevent form submission and page reload
//   var searchQuery = $("input[name='searchQuery']").val();
//   $.ajax({
//     url: "SearchProductsServlet",
//     data: {
//       searchQuery: searchQuery,
//     },
//     success: function (response) {
//       // process the response here
//       // update the DOM to display the matching products
//       var productsList = $("<ul>");
//       $.each(response, function (index, value) {
//         var product = $("<li>").text(value.name + " - " + value.price);
//         productsList.append(product);
//       });
//       $("#search-results").html(productsList);
//     },
//   });
//   return false;
// });

// document
//   .getElementById("search-form")
//   .addEventListener("submit",

// function submitHandler(event) {
//   console.log("Hello");
//   event.preventDefault(); // prevent form submission and page reload
//   var searchQuery = document.querySelector("input[name='searchQuery']").value;
//   var xhr = new XMLHttpRequest();
//   xhr.onreadystatechange = function () {
//     if (xhr.readyState === 4 && xhr.status === 200) {
//       // process the response here
//       var response = JSON.parse(xhr.responseText);
//       var productsList = document.createElement("ul");
//       response.forEach(function (value) {
//         var product = document.createElement("li");
//         product.textContent = value.name + " - " + value.price;
//         productsList.appendChild(product);
//       });
//       document.getElementById("search-results").appendChild(productsList);
//     }
//   };
//   xhr.open("GET", "SearchProductsServlet?searchQuery=" + searchQuery);
//   xhr.send();
// }


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
