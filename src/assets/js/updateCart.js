async function submitUpdateForm(event, product_id) {
    event.preventDefault();

    const product_quantity = event.target.product_quantity.value
    const formData = new FormData()
    formData.append("product_quantity", product_quantity)

    const response = await fetch(`/cart/${product_id}`, {
        method: "PATCH",
        body: formData
    });
    const body = await response.json()

    const textField = document.getElementById("response-message");

    if (body.redirect_url != null) {
        window.location.href = body.redirect_url;
    } else {
        if (body.error != null) {
            textField.textContent = body.error
            textField.classList.add("error")
            event.target.product_quantity.value = body.previous_quantity;

        } else {
            textField.textContent = body.message

            const subtotalField = document.getElementById("product-subtotal-" + product_id)
            subtotalField.textContent = `${(body.product_price * product_quantity)} €`

            const subTotalField = document.getElementById("cart-subtotal")
            subTotalField.textContent = `${body.total_cart} €`

            const totalField = document.getElementById("cart-total")
            totalField.textContent = `${body.total_cart} €`

        }

        setTimeout(() => {
            textField.textContent = ""
        
            if (textField.classList.contains("error")) {
                textField.classList.remove("error")
            }
            
        }, 5000)
    }
}