class SearchController < ApplicationController
	def searchreq
		#render plain: params
		Comment.search do
			fulltext "test"
		end
		render plain: Comment.search
	end

	def searchpage
	end

	private
		def search_params
			params.require(:search).permit(:uni)
		end
end
