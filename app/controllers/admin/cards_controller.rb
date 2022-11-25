
module Admin
class CardsController < Admin::ApplicationController
  def index
    @students =Student.all
  end





end
end
