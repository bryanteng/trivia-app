class TriviaController < ApplicationController
  before_action :authorized
  def index
    @trivia = Trivium.all
  end

  def show
    @trivia = Trivium.find(params[:id])
    @answer = Answer.new
  end

  def trivia_answer
    @trivia = Trivium.find(params[:id])
    @answer = Answer.find(params["answer"]["answer"])
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
