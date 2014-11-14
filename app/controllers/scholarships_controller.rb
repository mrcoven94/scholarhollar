class ScholarshipsController < ApplicationController
  def index
    @scholarships = Scholarship.page(params[:page]).per(25)
  end

  def new
    @scholarship = Scholarship.new
  end


 def create
  @scholarship = Scholarship.new(params.require(:scholarship).permit(:title, :company, :url))
  if @scholarship.save
    redirect_to root_path
  else
    render "new"
  end
end
end