const addFavoritesForm = document.getElementById("add-favorites-form");

    addFavoritesForm.addEventListener("submit", async function(event) {
        event.preventDefault();

        const formData = new FormData(addFavoritesForm);

        const response = await fetch(addFavoritesForm.action, {
            method: "POST",
            body: formData
        });

        const textField = document.getElementById("response-message");
        const body = await response.json();

        if (response.status === 401 && body.redirect_url) {
            window.location.href = body.redirect_url;
        } else {

            textField.textContent = body.message;

            if (response.ok) {
                const favoriteIcon = document.getElementById("favoriteIcon");
                const favoriteNavbarIcon = document.getElementById("favoriteNavbarIcon")
            
                if (favoriteIcon) {
                    if (favoriteIcon.classList.contains("bx-heart")) {
                        favoriteIcon.classList.remove("bx-heart");
                        favoriteIcon.classList.add("bxs-heart");
                    } else {
                        favoriteIcon.classList.remove("bxs-heart");
                        favoriteIcon.classList.add("bx-heart");
                    }
                }

                if (body.has_favorite_items) {
                    favoriteNavbarIcon.classList.remove("bx-heart")
                    favoriteNavbarIcon.classList.add("bxs-heart")
                } else {
                    favoriteNavbarIcon.classList.remove("bxs-heart")
                    favoriteNavbarIcon.classList.add("bx-heart")
                }
            } 
        }

        setTimeout(() => {
            textField.textContent = "";
        }, 5000);
    });