const items = document.querySelectorAll('.product-item');
items.forEach((item) => {
    item.addEventListener('mouseover', () => {
        item.style.cursor = 'pointer';
    });
    }
);
