async function submitRemoveForm(event, user_id) {
    event.preventDefault();

    try {
        const response = await fetch(`/dashboard/users/${user_id}`, {
            method: "DELETE",
        });

        if (!response.ok) {
            throw new Error("Error al eliminar el usuario de bashboard");
        }

        const body = await response.json();

        if (body.redirect_url != null) 
            window.location.href = body.redirect_url;
        
        const userRow = document.getElementById("user-row-" + user_id);
        if (userRow) {
            userRow.remove();
        }
        
    } catch (error) {
        console.error(error);
    }
}