async function submitRemoveForm(event, user_id) {
    event.preventDefault();

    try {
        const response = await fetch(`/dashboard/user/${user_id}`, {
            method: "DELETE",
        });

        if (!response.ok) {
            throw new Error("Error al eliminar el usuario de bashboard");
        }

        await response.json();

        const userRow = document.getElementById("user-row-" + user_id);
        if (userRow) {
            userRow.remove();
        }
        
    } catch (error) {
        console.error(error);
    }
}