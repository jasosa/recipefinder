class RecipesController < ApplicationController
	def index
		@search_term = params[:search] || 'chocolate'
		@recipes = nil #Recipe.for(@search_term)
	end	
end
