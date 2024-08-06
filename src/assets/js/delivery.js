const stripe = Stripe('pk_test_51PbkmrRqBVkhNkphkoQ9kVhBK1rhHiF8LHr7OI46vwtzZ8u3Fg2ZZGSY3qw3va1030wuIL7VEBawsFnANZ8BfvYV006IzzBlN8');
const elements = stripe.elements();
const card = elements.create('card');

document.addEventListener('DOMContentLoaded', async () => {
    card.mount('#card-element');
});

async function delivery(event) {
    event.preventDefault();

    const textField = document.getElementById("response-message");
    const isPayLater = event.submitter.getAttribute('data-pay-later');
    const deliveryFormData = new FormData(event.target);
    
    const responseDelivery = await fetch('/checkout/delivery', {
        method: 'POST',
        body: deliveryFormData
    });

    const body = await responseDelivery.json()
    if (body.redirect_url != null) {
        window.location.href = body.redirect_url;
    } else if (body.error != null) 
        textField.textContent = body.error
        

    if (isPayLater === "false") {
        const { error, paymentIntent } = await stripe.confirmCardPayment(body.clientSecret, {
            payment_method: {
                card: card
            }
        });


        if (!error) {
            if (paymentIntent.status === 'succeeded') {

                const finishPaymentResponse = await fetch('/checkout', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        "status": "PAGADO"
                    })
                });
                const data = await finishPaymentResponse.json()
                window.location.href = data.redirect_url;
            }
        } else {
            const displayError = document.getElementById('card-errors');
            displayError.textContent = error.message
            
            setTimeout(() => {
                displayError.textContent = '';

            }, 5000)     
        }
    } else {
        const finishPaymentResponse = await fetch('/checkout', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                "status": "PENDIENTE"
            })
        });
        const data = await finishPaymentResponse.json()
        window.location.href = data.redirect_url;
    }
}