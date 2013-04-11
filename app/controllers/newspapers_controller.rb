class NewspapersController < ApplicationController
  def new
    @newspaper = Newspaper.new
    @newspaper.sub_plans.build
  end

  def create
    @newspaper = Newspaper.new(params[:newspaper])
    if @newspaper.save
      redirect_to newspaper_path(@newspaper)
    else
      render :new
    end
  end

  def index
    @newspapers = Newspaper.all
  end

  def update
  end

  def edit
  end

  def destroy
    # RW: Learn this. Again. 
    @newspaper = Newspaper.find(params[:id])
    @newspaper.destroy
    redirect_to root_path
  end

  def show
    @newspaper = Newspaper.find_by_id(params[:id])
  end
end
