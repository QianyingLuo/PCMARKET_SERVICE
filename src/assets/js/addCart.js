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
            const fullCartIcon = document.getElementById("cart-full")

            if (fullCartIcon == null) {
                const emptyCart = document.getElementById("emptyCart")
                const emptyCartLink = document.getElementById("emptyCartLink")
                emptyCartLink.href = "/user/login"
                const emptyCartIcon = document.getElementById("emptyCartIcon")

                const fullIcon = document.createElement("i")
                fullIcon.classList.add("bx")
                fullIcon.classList.add("bxs-shopping-bag")
                
                emptyCartLink.removeChild(emptyCartIcon);
                emptyCartLink.appendChild(fullIcon)
                emptyCart.append(emptyCartLink)
            }
        } 

        setTimeout(() => {
            textField.textContent = ""
        }, 5000)
    }
});