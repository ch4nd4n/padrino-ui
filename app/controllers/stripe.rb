PadrinoUi::PadrinoUi.controllers :stripe do

  get :index do
    render 'stripe/index'
  end

  post :charge do
    make_card_payment params
    render 'stripe/charge'
  end

  error Stripe::CardError do
    logger.debug env['sinatra.error'].message
  end

end
