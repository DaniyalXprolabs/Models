class DemosController < ApplicationController
  #before_action: find_demo, only: [:show,:edit,:update,:destroy]
  before_action :find_demo, only:[:show,:edit,:update,:destroy]
  def index
    @demo=Demo.all
  end

  def show
  end
  def new
  end
  def create
    @demo=Demo.new(demo_params)
    if @demo.save
      redirect_to @demo
    else
      render 'new'
    end
  end
  def edit
  end
  def update
    if @demo.update(demo_params)
      redirect_to @demo
    else
      render 'edit'
    end
  end
  def destroy

  end
  private
  def find_demo
    @demo=Demo.find(params[:id])
  end
  def demo_params
    params.require(:demo).permit(:name)
  end
end
