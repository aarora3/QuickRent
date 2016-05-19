class HousesController < ApplicationController

  def house_params
    params.require(:house).permit(:title, :rating, :description, :release_date, :price, :todate, :name, :email, :contactnumber)
  end

  def show
    id = params[:id] # retrieve house ID from URI route
    @house = House.find(id) # look up house by unique ID
    # will render app/views/houses/show.<extension> by default
  end

  def index
    current_user = User.find_by_id(session[:current_user_id])
    @all_ratings = House.ratings
    @rating_selection = params[:ratings] || session[:ratings] || {}
    if @rating_selection == {} then
      House.ratings.each do |r|
        @rating_selection[r] = 1
      end
    end
    @sort_param = params[:sort_by] || session[:sort_by]
    if @sort_param == 'title' then @title_header = 'hilite'
      elsif @sort_param == 'release_date' then @release_date_header = 'hilite'
    end
    if session[:ratings] != params[:ratings] or session[:sort_by] != params[:sort_by]
      session[:ratings] = params[:ratings]
      session[:sort_by] = params[:sort_by]
      redirect_to :sort_by => @sort_param, :ratings => @rating_selection
    end
    @houses = House.where(rating: @rating_selection.keys).order(@sort_param)

  end

  def new
    @house = House.new
  end
  

  def create
    @house = House.new(house_params)
    respond_to do |format|
      if @house.save
        flash[:success] = "Success!"
        format.html { redirect_to houses_path, notice: "#{@house.title} was successfully created." }
      else
        format.html { render :new }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @house = House.find params[:id]
  end

  def update
    p current_user
    @house = House.find params[:id]
    @house.update_attributes!(house_params)
    flash[:notice] = "#{@house.title} was successfully updated."
    redirect_to house_path(@house)
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    flash[:notice] = "Your request for '#{@house.title}' has been sent."
    redirect_to houses_path
  end
  
  def aboutus
  end
  
end