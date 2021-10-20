class SectionsController < ApplicationController
  def new
  end

  def create
  end

  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
end
