const loginForm = document.getElementById("login-form");

function makeLogin(e) {
    e.preventDefault();
    
    const formData = {
        "email": loginForm.email.value,
        "password": loginForm.password.value
    }

    fetch("/user/login", {
        method: "POST",
        body: JSON.stringify(formData),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(e => {       
        if (e.status == 401) {
            document.getElementById("login-error-message").textContent = "Las credenciales introducidas no son validas"
            throw Exception
        }
        e.json()
    }).then(res => {
        window.location.href = "/"
    }).catch(error => {})
}