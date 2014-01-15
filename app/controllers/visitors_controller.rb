class VisitorsController < ApplicationController
	def new
		@visitor = Visitor.new
	end

	def create
		@visitor = Visitor.new(secure_params)
		if @visitor.valid?
			flash[:notice] = "Choose #{@visitor.favorite}."
			@visitor.update_spreadsheet
			render :new
		else
			render :new
		end
	end

	private
		def secure_params
			params.require(:visitor).permit(:favorite, :comment)
		end
end
