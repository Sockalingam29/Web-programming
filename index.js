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
