const addCartForm = document.getElementById("add-cart-form");

addCartForm.addEventListener("submit", async function(event) {
    event.preventDefault();

    const formData = new FormData(addCartForm);

    const response = await fetch(addCartForm.action, {
        method: "POST",
        body: formData
    });

    const textField = document.getElementById("response-message");
    const body = await response.json()

    if (body.redirect_url != null) 
        window.location.href = body.redirect_url;
    
    else {
        textField.textContent = body.message

        document.getElementById("product_quantity").value = 1

        if (response.ok) {
            const fullCartIcon = document.getElementById("fullCartIcon")

            if (fullCartIcon == null) {
                const cartIcon = document.getElementById("emptyCartIcon")
        
                cartIcon.classList.remove("bx-shopping-bag")
                cartIcon.classList.add("bxs-shopping-bag")
            }
        } 

        setTimeout(() => {
            textField.textContent = ""
        }, 5000)
    }
});