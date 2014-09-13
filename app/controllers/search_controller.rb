class SearchController < ApplicationController
	def searchreq
		#render plain: params
		search = Comment.search do
			fulltext "shitty"
		end

		render plain: search.results
	end

	def searchpage
	end

	private
		def search_params
			params.require(:search).permit(:uni)
		end
end
