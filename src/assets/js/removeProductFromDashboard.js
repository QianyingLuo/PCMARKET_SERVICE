async function submitRemoveForm(event, product_id) {
    event.preventDefault();

    try {
        const response = await fetch(`/dashboard/product/${product_id}`, {
            method: "DELETE",
        });

        if (!response.ok) {
            throw new Error("Error al eliminar el producto de bashboard");
        }

        const body = await response.json();


        const productRow = document.getElementById("product-row-" + product_id);
        if (productRow) {
            productRow.remove();
        }
        
    } catch (error) {
        console.error(error);
    }
}