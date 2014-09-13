class SearchController < ApplicationController
	def searchreq
		render plain: params
	end

	def searchpage
	end

	private
		def search_params
			params.require(:search).permit(:uni)
		end
end
