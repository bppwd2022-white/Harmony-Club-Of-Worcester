class Web::Event::ListingsController < ApplicationController
  before_action :set_web_event_listing, only: %i[ show edit update destroy ]

  # GET /web/event/listings or /web/event/listings.json
  def index
    @web_event_listings = Web::Event::Listing.all
  end

  # GET /web/event/listings/1 or /web/event/listings/1.json
  def show
  end

  # GET /web/event/listings/new
  def new
    @web_event_listing = Web::Event::Listing.new
  end

  # GET /web/event/listings/1/edit
  def edit
  end

  # POST /web/event/listings or /web/event/listings.json
  def create
    @web_event_listing = Web::Event::Listing.new(web_event_listing_params)

    respond_to do |format|
      if @web_event_listing.save
        format.html { redirect_to @web_event_listing, notice: "Listing was successfully created." }
        format.json { render :show, status: :created, location: @web_event_listing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @web_event_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web/event/listings/1 or /web/event/listings/1.json
  def update
    respond_to do |format|
      if @web_event_listing.update(web_event_listing_params)
        format.html { redirect_to @web_event_listing, notice: "Listing was successfully updated." }
        format.json { render :show, status: :ok, location: @web_event_listing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @web_event_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web/event/listings/1 or /web/event/listings/1.json
  def destroy
    @web_event_listing.destroy
    respond_to do |format|
      format.html { redirect_to web_event_listings_url, notice: "Listing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_event_listing
      @web_event_listing = Web::Event::Listing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def web_event_listing_params
      params.require(:web_event_listing).permit(:title, :location_id)
    end
end
