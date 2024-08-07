async function submitRemoveForm(event, product_id) {
    event.preventDefault();

    const response = await fetch(`/cart/${product_id}`, {
        method: "DELETE",
    });
    const body = await response.json()

    const textField = document.getElementById("response-message");

    
    if (body.redirect_url != null) {
        window.location.href = body.redirect_url;
    
    } else if (body.error != null) {
        textField.classList.add("error")
        textField.textContent = body.error

        setTimeout(() => {
            textField.textContent = ""
            textField.classList.remove("error")
        }, 5000)
    } else {
        if (body.is_empty) {
            window.location.reload();
            
        } else {
        const subTotalField = document.getElementById("cart-subtotal")
        subTotalField.textContent = `${body.total_cart} €`

        const totalField = document.getElementById("cart-total")
        totalField.textContent = `${body.total_cart} €`

        const productRow = document.getElementById("product-row-" + product_id)
        productRow.remove()

        }
    }
}