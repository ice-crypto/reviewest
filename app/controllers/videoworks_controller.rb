class VideoworksController < ApplicationController
  before_action :set_videowork, only: [:show, :edit, :update, :destroy]

  # GET /videoworks
  # GET /videoworks.json
  def index
    @videoworks = Videowork.all
  end

  # GET /videoworks/1
  # GET /videoworks/1.json
  def show
  end

  def select
    @videoworks = Videowork.all
  end

  # GET /videoworks/new
  def new
    @videowork = Videowork.new
    @genres = Genre.all
    @categories = Category.all
  end

  # GET /videoworks/1/edit
  def edit
    @genres = Genre.all
    @categories = Category.all
  end

  # POST /videoworks
  # POST /videoworks.json
  def create
    @videowork = Videowork.new(videowork_params)
    @genres = Genre.all
    @categories = Category.all

    respond_to do |format|
      if @videowork.save
        format.html { redirect_to @videowork, notice: 'Videowork was successfully created.' }
        format.json { render :show, status: :created, location: @videowork }
      else
        format.html { render :new }
        format.json { render json: @videowork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videoworks/1
  # PATCH/PUT /videoworks/1.json
  def update
    respond_to do |format|
      if @videowork.update(videowork_params)
        format.html { redirect_to @videowork, notice: 'Videowork was successfully updated.' }
        format.json { render :show, status: :ok, location: @videowork }
      else
        format.html { render :edit }
        format.json { render json: @videowork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videoworks/1
  # DELETE /videoworks/1.json
  def destroy
    @videowork.destroy
    respond_to do |format|
      format.html { redirect_to videoworks_url, notice: 'Videowork was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_videowork
      @videowork = Videowork.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def videowork_params
      params.require(:videowork).permit(:title, :screening_at, :screening_on, :summary, :directors, :screenplaies, :casts, :image, :category_id, :genre_id)
    end
end
