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
      hoverCursor();
    }
  };
  xhr.open("GET", "search?searchQuery=" + searchQuery);
  xhr.send();
}

function loadXMLDoc(filename)
{
  xhttp = new XMLHttpRequest();
  xhttp.open("GET", filename, false);
  try {xhttp.responseType = "msxml-document"} catch(err) {} // Helping IE11
  xhttp.send("");
  return xhttp.responseXML;
}

function displayResult()
{
  console.log("Called");
  const xml = loadXMLDoc("products.xml");
  const xsl = loadXMLDoc("products.xsl");
  if (document.implementation && document.implementation.createDocument)
    {
    const xsltProcessor = new XSLTProcessor();
    xsltProcessor.importStylesheet(xsl);
    resultDocument = xsltProcessor.transformToFragment(xml, document);
    document.getElementById("products").appendChild(resultDocument);
    hoverCursor();
    }
}

function hoverCursor(){
  const items = document.querySelectorAll(".product-item");
  items.forEach((item) => {
    item.addEventListener("mouseover", () => {
      item.style.cursor = "pointer";
    });
  });
}

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
