class SortsController < ApplicationController
  def new
  	
  end

  def create
  	@input = params[:array]
	@arrays = @input['array'].split(',')

	@test = @arrays.each {|a| a.strip! if a.respond_to? :strip! }

	@numbers = []
	@characters = []
	@test.each do |i| 
		@numbers << i if isint(i)
		@characters << i if !isint(i)
	end

	@sums = @numbers.map { |x| x.to_i }.sum
	@min = @numbers.min
	@max = @numbers.max
	@word = @characters.join('')

	render 'result'
  end

  def isint(str)
    return !!(str =~ /^[-+]?[1-9]([0-9]*)?$/)
  end
end
