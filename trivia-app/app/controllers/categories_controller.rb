class CategoriesController < ApplicationController
  before_action :authorized

  def index
  end

  def show
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
end
