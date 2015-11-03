class FarmersController < ApplicationController

  def index
  end

  def show
  end

  def availability
     @list_of_farmers = Farmer.all

     render("availability")
  end

  def new_form

    render("new_form")
  end

  def create_row
    @i = Farmer.new
    @i.first_name = params[:first_name]
    @i.last_name = params[:last_name]
    @i.address = params[:address]
    @i.state = params[:state]
    @i.size = params[:size]
    @i.notes = params[:notes]
    @i.rental_rate = params[:rental_rate]

    @i.save

    redirect_to("http://localhost:3000/farmers")
  end

def edit_form
    @i = Farmer.find(params[:id])

    render("edit_form")
end

def update_row
    @i = Farmer.find(params[:id])
    @i.first_name = params[:first_name]
    @i.last_name =  params[:last_name]
    @i.address = params[:address]
    @i.state = params[:state]
    @i.size = params[:size]
    @i.notes =  params[:notes]
    @i.rental_rate = params[:rental_rate]

    @i.save

    redirect_to("http://localhost:3000/farmers/#{@i.id}")
end

end
