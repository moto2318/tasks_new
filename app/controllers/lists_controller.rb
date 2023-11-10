class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def index
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to '/top'
  end

  def show
  end

  def edit
  end

  private
  def list_params
    params.require(:list).parmit(:title, :body)
  end
end
