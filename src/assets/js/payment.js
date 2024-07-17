document.addEventListener('DOMContentLoaded', function() {
    const expirationDateInput = document.getElementById('expiration_date');
    const cvvInput = document.getElementById('cvv');
    const cardNumberInput = document.getElementById('card_number');
    const expirationErrorMessage = document.getElementById('expiration-error-message');
    const cvvErrorMessage = document.getElementById('cvv-error-message');
    const cardNumberErrorMessage = document.getElementById('card-number-error-message');
    const expirationHelperMessage = document.getElementById('expiration-helper-message');
    const cvvHelperMessage = document.getElementById('cvv-helper-message');
    const cardNumberHelperMessage = document.getElementById('card-number-helper-message');

    // Event listener for expiration date input
    expirationDateInput.addEventListener('input', function(e) {
        let value = e.target.value.trim(); // Trim whitespace
        
        // Display helper message if input is empty
        if (value === '') {
            expirationHelperMessage.style.display = 'block';
            expirationErrorMessage.style.display = 'none';
        } else {
            expirationHelperMessage.style.display = 'none';
        }

        // Insert the slash after two digits
        if (value.length === 2 && !value.includes('/')) {
            e.target.value = value + '/';
        }
        
        // Validate the input
        if (!/^(0[1-9]|1[0-2])\/\d{2}$/.test(value)) {
            expirationErrorMessage.textContent = 'Fecha no válida';
            expirationErrorMessage.style.display = 'block';
        } else {
            expirationErrorMessage.textContent = 'Fecha no válida';
            expirationErrorMessage.style.display = 'none';
        }
    });

    // Event listener for focusing out of CVV input
    expirationDateInput.addEventListener('focusout', function() {
        let value = expirationDateInput.value.trim();

        // Display appropriate error message if CVV input is empty after error
        if (value === '') {
            expirationErrorMessage.textContent = 'Introduce una fecha de caducidad';
            expirationErrorMessage.style.display = 'block';
        }
    });


    // Event listener for CVV input
    cvvInput.addEventListener('input', function(e) {
        let value = e.target.value.trim(); // Trim whitespace
        
        // Display helper message if input is empty
        if (value === '') {
            cvvHelperMessage.style.display = 'block';
            cvvErrorMessage.style.display = 'none';
        } else {
            cvvHelperMessage.style.display = 'none';
        }

        // Validate the input
        if (!/^\d{3}$/.test(value)) {
            cvvErrorMessage.style.display = 'block';
        } else {
            cvvErrorMessage.style.display = 'none';
        }
    });

    // Event listener for CVV input to handle non-numeric input
    cvvInput.addEventListener('keypress', function(e) {
        let keyCode = e.keyCode || e.which;
        let keyValue = String.fromCharCode(keyCode);

        // Check if input is not a number
        if (isNaN(keyValue)) {
            e.preventDefault();
            cvvErrorMessage.textContent = 'Código de seguridad no válido';
            cvvErrorMessage.style.display = 'block';
        } else {
            cvvErrorMessage.textContent = 'Código de seguridad no válido';
            cvvErrorMessage.style.display = 'none';
        }
    });

    // Event listener for focusing out of CVV input
    cvvInput.addEventListener('focusout', function() {
        let value = cvvInput.value.trim();

        // Display appropriate error message if CVV input is empty after error
        if (value === '') {
            cvvErrorMessage.textContent = 'Introduce el código de seguridad';
            cvvErrorMessage.style.display = 'block';
        }
    });

    // Event listener for card number input
    cardNumberInput.addEventListener('input', function(e) {
        let value = e.target.value.trim(); // Trim whitespace
        
        // Display helper message if input is empty
        if (value === '') {
            cardNumberHelperMessage.style.display = 'block';
            cardNumberErrorMessage.style.display = 'none';
        } else {
            cardNumberHelperMessage.style.display = 'none';
        }

        // Validate the input (only digits)
        if (!/^\d*$/.test(value)) {
            cardNumberErrorMessage.textContent = 'Número de la tarjeta de crédito no válido';
            cardNumberErrorMessage.style.display = 'block';
        } else if (value.length > 0 && value.length < 16) {
            cardNumberErrorMessage.textContent = 'Introduce el número tal y como aparece en tu tarjeta';
            cardNumberErrorMessage.style.display = 'block';
        } else {
            cardNumberErrorMessage.style.display = 'none';
        }
    });

    // Event listener for focusing out of card number input
    cardNumberInput.addEventListener('focusout', function() {
        let value = cardNumberInput.value.trim();

        // Display appropriate error message if card number input is empty after error
        if (value === '') {
            cardNumberErrorMessage.textContent = 'Introduce el número tal y como aparece en tu tarjeta';
            cardNumberErrorMessage.style.display = 'block';
        }
    });

    document.getElementById('payment-form').addEventListener('submit', function(e) {
        if (expirationErrorMessage.style.display === 'block' ||
            cvvErrorMessage.style.display === 'block' ||
            cardNumberErrorMessage.style.display === 'block' ||
            expirationDateInput.value.trim() === '' ||
            cvvInput.value.trim() === '' ||
            cardNumberInput.value.trim() === '') {
            e.preventDefault();
        }
    });
});