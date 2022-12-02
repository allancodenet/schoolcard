
module Admin
class CardsController < Admin::ApplicationController
  def index
    @students =Student.where(stream_id:params[:stream])
  end





end
end
