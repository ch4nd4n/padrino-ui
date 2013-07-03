# Helper methods defined here can be accessed in any controller or view in the application

PadrinoUi::PadrinoUi.helpers do
  # Helper to make payment using Stripe API
  def make_card_payment(params)
    @error = nil
    @charge = params[:charge]
    card = params[:card]
    # Convert $s to Cents by multiplying with 100
    amt = ((@charge['amount'].to_f)*100).to_i
    logger.debug amt
    logger.debug card
    begin
      @stripe = Stripe::Charge.create(
        :amount => amt,
        :currency => "usd",
        :card => {
          :number => card['number'],
          :exp_month => card['month'],
          :exp_year => card['year'],
          :cvc => card['cvv']
        },
        :description => "Charge for test@example.com"
      )
      logger.debug @stripe.id
    rescue Exception => e
      @error = e.message
      logger.error e.inspect
    end
  end
end
