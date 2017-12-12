class HeatsheetsController < ApplicationController
  before_action :set_heatsheet, only: [:show, :edit, :update, :destroy]

  # GET /heatsheets
  # GET /heatsheets.json
  def index
    @heatsheets = Heatsheet.all
  end

  # GET /heatsheets/1
  # GET /heatsheets/1.json
  def show
  end

  # GET /heatsheets/new
  def new
    @heatsheet = Heatsheet.new
  end

  # GET /heatsheets/1/edit
  def edit
  end

  # POST /heatsheets
  # POST /heatsheets.json
  def create
    @heatsheet = Heatsheet.new(heatsheet_params)

    respond_to do |format|
      if @heatsheet.save
        format.html { redirect_to @heatsheet, notice: 'Heatsheet was successfully created.' }
        format.json { render :show, status: :created, location: @heatsheet }
      else
        format.html { render :new }
        format.json { render json: @heatsheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heatsheets/1
  # PATCH/PUT /heatsheets/1.json
  def update
    respond_to do |format|
      if @heatsheet.update(heatsheet_params)
        format.html { redirect_to @heatsheet, notice: 'Heatsheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @heatsheet }
      else
        format.html { render :edit }
        format.json { render json: @heatsheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heatsheets/1
  # DELETE /heatsheets/1.json
  def destroy
    @heatsheet.destroy
    respond_to do |format|
      format.html { redirect_to heatsheets_url, notice: 'Heatsheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heatsheet
      @heatsheet = Heatsheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def heatsheet_params
      params.require(:heatsheet).permit(:school_club, :last_name, :first_name, :entry_mark)
    end
end
