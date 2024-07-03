# app/controllers/bingo_numbers_controller.rb

class BingoNumbersController < ApplicationController
  def index
    @bingo_numbers = BingoNumber.all
    if params[:search_number].present?
      number = params[:search_number].to_i
      @bingo_number = BingoNumber.find_by(number: number)
      if @bingo_number
        @bingo_number.update(marked: true)
      end
    end
  end

  def mark
    @bingo_number = BingoNumber.find(params[:id])
    @bingo_number.update(marked: true)
    redirect_to root_path
  end

  def clear
    BingoNumber.update_all(marked: false)
    redirect_to root_path
  end
end
