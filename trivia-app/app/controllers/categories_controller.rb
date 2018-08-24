class CategoriesController < ApplicationController
  before_action :authorized

  def index
    @categories = Category.all
  end

  def show
    # Check if user has [unanswered] questions in the category
      # If yes, show all 
    @category = Category.find(params[:id])
  end

  def create
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
