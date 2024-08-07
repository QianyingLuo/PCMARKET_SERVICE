let currentProductId = null;

function openEditModal(product_id) {
    console.log("hola" + product_id);
    currentProductId = product_id;

    fetch(`/dashboard/products/${product_id}`)
        .then(response => response.json())
        .then(data => {
            console.log(data);
            document.getElementById('edit-product-id').value = data.product.id;
            document.getElementById('edit-product-name').value = data.product.name;
            document.getElementById('edit-product-description').value = data.product.description;
            document.getElementById('edit-product-type').value = data.product.type;
            document.getElementById('edit-product-brand').value = data.product.brand;
            document.getElementById('edit-product-stock').value = data.product.stock;
            document.getElementById('edit-product-stars').value = data.product.stars;
            document.getElementById('edit-product-price').value = data.product.price;
            document.getElementById('edit-product-discount').value = data.product.discount_decimal;
            
            document.getElementById('edit-modal').style.display = 'block';
        })
        .catch(error => console.error('Error:', error));
}

function closeEditModal() {
    document.getElementById('edit-modal').style.display = 'none';
}

function editProduct(event) {
    event.preventDefault();
    console.log(event.target);
    form = event.target
    productId = form.productId.value

    const formData = new FormData();
    formData.append('id', document.getElementById('edit-product-id').value);

    if (document.getElementById('edit-product-image').files[0] !== undefined) {
        formData.append('image', document.getElementById('edit-product-image').files[0]);
    }

    formData.append('name', document.getElementById('edit-product-name').value);
    formData.append('description', document.getElementById('edit-product-description').value);
    formData.append('type', document.getElementById('edit-product-type').value);
    formData.append('brand', document.getElementById('edit-product-brand').value);
    formData.append('stock', document.getElementById('edit-product-stock').value);
    formData.append('stars', document.getElementById('edit-product-stars').value);
    formData.append('price', document.getElementById('edit-product-price').value);
    formData.append('discount_decimal', document.getElementById('edit-product-discount').value);

    fetch(`/dashboard/products/${productId}`, {
        method: 'PUT',
        body: formData,
    })
    
    .then(response => response.json())
    .then(data => {
        
        if (data.error) {
            window.alert(data.error)
        } else if (data.message) {

            if (form.productImage.files[0] != undefined) {
                
                const reader = new FileReader();
                reader.onload = function(e) {
                    document.getElementById("productImage-" + productId).firstElementChild.src = e.target.result;
                };
                reader.readAsDataURL(form.productImage.files[0]);
            }

            document.getElementById("productName-" + productId).textContent = form.productName.value
            document.getElementById("productDescription-" + productId).textContent = form.productDescription.value
            document.getElementById("productType-" + productId).textContent = form.productType.value
            document.getElementById("productBrand-" + productId).textContent = form.productBrand.value
            document.getElementById("productStock-" + productId).textContent = form.productStock.value
            document.getElementById("productStars-" + productId).textContent = form.productStars.value
            document.getElementById("productPrice-" + productId).textContent = form.productPrice.value
            document.getElementById("productDiscount-" + productId).textContent = form.productDiscount.value

            if (form.productDiscount.value !== 0) {
                document.getElementById("productDiscountApplied-" + productId).textContent = form.productPrice.value * (1 - form.productDiscount.value)
            } else {
                document.getElementById("productDiscountApplied-" + productId).textContent = form.productPrice.value
            }

            closeEditModal();
        } else {
            console.error('Error updating product:', data);
        }
    })
    .catch(error => console.error('Error:', error));
}