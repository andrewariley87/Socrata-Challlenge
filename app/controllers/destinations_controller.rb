class DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :edit, :update, :destroy]
  respond_to :js
  # GET /destinations
  # GET /destinations.json
  def index
    if params[:search_destination]
      @destinations = Destination.search(params[:search_destination])
      if @destinations.blank?
        flash[:notice] = 'We were unable to locate your search results'
        redirect_to :back
      end
    else
    @destinations = Destination.all.order('site ASC')
    end
    url = 'https://maps.googleapis.com/maps/api/js?key='
    key = ENV['GOOGLE_MAPS']
  end

  # GET /destinations/1
  # GET /destinations/1.json
  def show
    respond_with @destination
  end

  # GET /destinations/new
  def new
    @destination = Destination.new
  end

  # GET /destinations/1/edit
  def edit
  end

  # POST /destinations
  # POST /destinations.json
  def create
    @destination = Destination.new(destination_params)

    respond_to do |format|
      if @destination.save
        format.html { redirect_to @destination, notice: 'Destination was successfully created.' }
        format.json { render :show, status: :created, location: @destination }
      else
        format.html { render :new }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /destinations/1
  # PATCH/PUT /destinations/1.json
  def update
    respond_to do |format|
      if @destination.update(destination_params)
        format.html { redirect_to @destination, notice: 'Destination was successfully updated.' }
        format.json { render :show, status: :ok, location: @destination }
      else
        format.html { render :edit }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destinations/1
  # DELETE /destinations/1.json
  def destroy
    @destination.destroy
    respond_to do |format|
      format.html { redirect_to destinations_url, notice: 'Destination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def maps
      url = 'https://maps.googleapis.com/maps/api/js?key='
      key = ENV['GOOGLE_MAPS']
      @endpoint = url + key
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_destination
      @destination = Destination.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def destination_params
      params[:destination]
    end
end
