async function submitRemoveForm(event, product_id) {
    event.preventDefault();

    try {
        const response = await fetch(`/dashboard/products/${product_id}`, {
            method: "DELETE",
        });

        if (!response.ok) {
            throw new Error("Error al eliminar el producto de bashboard");
        }

        const body = await response.json();

        if (body.redirect_url != null) 
            window.location.href = body.redirect_url;
        

        const productRow = document.getElementById("product-row-" + product_id);
        if (productRow) {
            productRow.remove();
        }
        
    } catch (error) {
        console.error(error);
    }
}