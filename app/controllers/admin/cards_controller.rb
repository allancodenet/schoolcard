
module Admin
class CardsController < Admin::ApplicationController
 
  def index
    @students =Student.where(stream_id:params[:stream])
    # @students = students.includes(:stream , :substream, :school)
    @streams= Stream.all
    
  end





end
end
