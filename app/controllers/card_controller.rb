class CardController < ApplicationController
  def index
    @students =Student.all
    @school=SchoolDetail.find_by_id(1)
  end
end
