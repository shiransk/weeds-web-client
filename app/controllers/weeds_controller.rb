class WeedsController < ApplicationController

  def show 
    @brand = Unirest.get("http://localhost:3000/api/v1/brands/#{params[:id]}.json").body 
  end

  def index 
    @brands = Unirest.get("http://localhost:3000/api/v1/brands.json").body 
  end

  def new 
    
  end

  def create
    @brand = Unirest.post('http://localhost:3000/api/v1/brands.json',parameters:
    { name: params[:name],
      price: params[:price], 
      strain: params[:strain]
    }).body
    # binding.pry
    redirect_to "/weeds/#{@brand['id']}"
  end

  def edit
    @brand = Unirest.get("http://localhost:3000/api/v1/brands/#{params[:id]}.json").body 
  end

  def update
    @brand = Unirest.patch("http://localhost:3000/api/v1/brands/#{params[:id]}",parameters:
    { name: params[:name],
      price: params[:price], 
      strain: params[:strain]
    }).body
  end

  def destroy
    @brand = Unirest.delete("http://localhost:3000/api/v1/brands/#{params[:id]}.json").body
    redirect_to '/weeds' 
  end

end
