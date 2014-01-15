class VisitorsController < ApplicationController
	def new
		flash.now[:notice] = "Welcome!"
		flash.now[:alert] = "My birthday is soon."
	end
end
