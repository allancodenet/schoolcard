class CardController < ApplicationController
  def index
    @students =Student.photo
  end
end
