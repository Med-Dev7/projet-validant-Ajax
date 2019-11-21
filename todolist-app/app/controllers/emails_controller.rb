class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])
    respond_to do |format|
        format.html { }
        format.js { } 
    end
  end

  def new

  end
  def create 
    
    @email = Email.new(body: Faker::Lorem.paragraph, object: Faker::Book.title)
    respond_to do |format|
      if @email.save
        format.html { redirect_to root_path }
        format.js { } 
      else
        format.html { redirect_to root_path }
        format.js { } 
      end

    end

  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html {redirect_to root_path}
      format.js {}
    end
  end

end
