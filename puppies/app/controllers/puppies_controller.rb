class PuppiesController < ApplicationController
  def index
   @puppie = Puppie.all
  end

  def new
   @puppie = Puppie.new
  end

  def show
   @puppie = Puppie.find params[:id]
  end

  

   def create
      @puppie = Puppie.new puppie_params
      if @puppie.save
         redirect_to "/puppies"
      else
         render :new   
      end
   end

  def edit
   @puppie = Puppie.find params[:id]
  end

  def destroy
   puppie = Puppie.find params[:id]
   puppie.destroy
   redirect_to '/puppies'
  end

  private

  def puppie_params
  params.require(:puppie).permit(:name, :age, :breed)   
  end


end
