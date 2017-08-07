class RollsController < ApplicationController
  def index
  	p "INDEX **" * 20
  	@rolls = []
  	p "bueno"
  	p 3.times { @rolls << Roll.create }
  	p @win = "WINNER!!" if @rolls.map! { |roll| roll.value }.uniq.count == 1
  end


  def create
  	p "NEWW **" * 20
    @roll = Roll.new
  	#p params[:value]

  	@rolls = []
  	3.times { @rolls << Roll.create }
  	@win = "WINNER!!" if @rolls.map! { |roll| roll.value }.uniq.count == 1

  	respond_to do |f|
    	f.html { redirect_to rolls_url }
    	f.js { render :layout => false }
  	end
  	
  end

end
