const stripe = Stripe('pk_test_51PbkmrRqBVkhNkphkoQ9kVhBK1rhHiF8LHr7OI46vwtzZ8u3Fg2ZZGSY3qw3va1030wuIL7VEBawsFnANZ8BfvYV006IzzBlN8');
const elements = stripe.elements();
const card = elements.create('card');

document.addEventListener('DOMContentLoaded', async () => {
    card.mount('#card-element');

    card.on('change', event => {
        const displayError = document.getElementById('card-errors');
        if (event.error) {
            displayError.textContent = event.error.message;
        } else {
            displayError.textContent = '';
        }
    });
});

async function delivery(event) {
    event.preventDefault();

    const isPayLater = event.submitter.getAttribute('data-pay-later');
    const deliveryFormData = new FormData(event.target);
    
    const responseDelivery = await fetch('/checkout/delivery', {
        method: 'POST',
        body: deliveryFormData
    });

    const data = await responseDelivery.json()

    const textField = document.getElementById("response-message");
    const body = await response.json()

    if (body.error != null) {
        textField.textContent = body.error
        

    if (!isPayLater) {
        const { error, paymentIntent } = await stripe.confirmCardPayment(data.clientSecret, {
            payment_method: {
                card: card
            }
        });

        if (!error) {
            if (paymentIntent.status === 'succeeded') {
                console.log('Pago exitoso!');
    
    
                const finishPaymentResponse = await fetch('/checkout', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        "status": "PAID"
                    })
                });
                const data = await finishPaymentResponse.json()
                //window.location.href = data.redirect_url;
            }
        }
    } else {
        const finishPaymentResponse = await fetch('/checkout', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                "status": "PENDING"
            })
        });
        const data = await finishPaymentResponse.json()
        //window.location.href = data.redirect_url;
    }
}
}