class PaymentController < ApplicationController
  def index
  end

 def pay
        params['simplifyToken']
       payment = Simplify::Payment.create({
           amount: '1000',
           token: params['simplifyToken'],
           description: 'Simplify Rails Example',
           currency: 'USD'})
 
       @message = payment['paymentStatus']
  end

end