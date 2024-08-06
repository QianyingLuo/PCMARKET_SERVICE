async function submitRemoveForm(event, product_id) {
    event.preventDefault();

    try {
        const response = await fetch(`/favorites/${product_id}`, {
            method: "DELETE",
        });
  
        if (!response.ok) {
            throw new Error("Error al eliminar el producto de favoritos");
        }

        const body = await response.json();

        if (body.redirect_url != null) {
            window.location.href = body.redirect_url;
        
        } else if (body.is_empty) {
            window.location.reload();

        } else {
            const productRow = document.getElementById("product-row-" + product_id);
            if (productRow) {
                productRow.remove();
            }
        }
    } catch (error) {
        console.error(error);
    }
}