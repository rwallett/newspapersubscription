class SubPlansController < ApplicationController
  def new
    @sub_plan = SubPlan.new
  end

  def create
    @sub_plan = SubPlan.new(params[:sub_plan])
    if @sub_plan.save
      redirect_to newspaper_path(@sub_plan.newspaper.id)
    else
      render :new
    end
  end

  def index
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
