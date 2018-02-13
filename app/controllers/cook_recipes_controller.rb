class CookRecipesController < ApplicationController
  def search_page
  end

  def search
    @search_word = params[:name]
    render 'result'
  end

  def result
    
  end
end
