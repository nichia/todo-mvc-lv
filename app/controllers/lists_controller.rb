class ListsController < ApplicationController

  def index
    @list = List.new
    @lists = List.all
    # raise @lists.inspect - check that it comes through here
    # implicit rendering
    # render 'list/index.html.erb'
    # render 'controller/action'
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    #raise params.inspect
    #@list = List.new(params[:list])
    @list = List.new(params[list_params]) # mass assignment - strong parameters

    @list.name = params[:list][:name]
    @list.save

    redirect_to list_url(@list)
  end

  private

    def list_params # strong parameters
      params.require(:list).permit(:name)
    end
end
