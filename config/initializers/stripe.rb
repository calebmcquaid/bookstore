require 'stripe'

Stripe.api_key = Bookstore::Application.credentials.stripe[:secret_key]
