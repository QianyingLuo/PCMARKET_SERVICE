const addProductForm = document.getElementById("new-product-form");

addProductForm.addEventListener("submit", async function(event) {
    event.preventDefault();

    const formData = new FormData(addProductForm);

    const response = await fetch(addProductForm.action, {
        method: "POST",
        body: formData
    });

    const textField = document.getElementById("response-message");
    const body = await response.json();

    if (body.redirect_url != null) {
        window.location.href = body.redirect_url;
    } else {
        if (body.error != null) {
            textField.textContent = body.error;
            textField.classList.add("error");
        } else {
            textField.textContent = body.message;
        }

        setTimeout(() => {
            textField.textContent = "";
            if (textField.classList.contains("error")) {
                textField.classList.remove("error");
            }
        }, 5000);
        
    }
});