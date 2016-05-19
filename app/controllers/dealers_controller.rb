class DealersController < ApplicationController
  before_action :set_dealer, only: [:show, :edit, :update, :destroy]


  def dealer_params
    params.require(:dealer).permit(:name, :area, :email, :contactnumber)
  end
  # GET /reviews
  def index
    @dealers = Dealer.all
  end

  # GET /reviews/1
  def show
    id = params[:id] # retrieve dealer name from URI route
    @dealer = Dealer.find(id)
  end

  # GET /reviews/new
  def new
    @dealer = Dealer.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  def create
    @dealer = Dealer.new(dealer_params)

    if @dealer.save
      redirect_to @dealer, notice: 'Dealer was successfully created.'
    else
      render :new
    end
  end
  
  # def create
  #   @dealer = Dealer.create!(dealer_params)
  #   flash[:notice] = "#{@dealer.name} was successfully created."
  #   redirect_to dealers_path
  # end

  # PATCH/PUT /reviews/1
  def update
    if @dealer.update(dealer_params)
      redirect_to @dealer, notice: 'Dealer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /reviews/1
  def destroy
    @dealer.destroy
    redirect_to dealers_url, notice: 'Dealer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dealer
      @dealer = Dealer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    

end