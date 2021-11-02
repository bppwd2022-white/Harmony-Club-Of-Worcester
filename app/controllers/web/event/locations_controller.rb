class Web::Event::LocationsController < ApplicationController
  before_action :set_web_event_location, only: %i[ show edit update destroy ]

  # GET /web/event/locations or /web/event/locations.json
  def index
    @web_event_locations = Web::Event::Location.all
  end

  # GET /web/event/locations/1 or /web/event/locations/1.json
  def show
  end

  # GET /web/event/locations/new
  def new
    @web_event_location = Web::Event::Location.new
  end

  # GET /web/event/locations/1/edit
  def edit
  end

  # POST /web/event/locations or /web/event/locations.json
  def create
    @web_event_location = Web::Event::Location.new(web_event_location_params)

    respond_to do |format|
      if @web_event_location.save
        format.html { redirect_to @web_event_location, notice: "Location was successfully created." }
        format.json { render :show, status: :created, location: @web_event_location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @web_event_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web/event/locations/1 or /web/event/locations/1.json
  def update
    respond_to do |format|
      if @web_event_location.update(web_event_location_params)
        format.html { redirect_to @web_event_location, notice: "Location was successfully updated." }
        format.json { render :show, status: :ok, location: @web_event_location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @web_event_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web/event/locations/1 or /web/event/locations/1.json
  def destroy
    @web_event_location.destroy
    respond_to do |format|
      format.html { redirect_to web_event_locations_url, notice: "Location was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_event_location
      @web_event_location = Web::Event::Location.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def web_event_location_params
      params.require(:web_event_location).permit(:title)
    end
end
