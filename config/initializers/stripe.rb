Rails.configuration.stripe = {
  :publishable_key => 'pk_test_H8cWzCXFjxlUvDbN6wtZi3Ie',
  :secret_key      => 'sk_test_K3r926rr88Jgu9o9hoaSv9SO'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
