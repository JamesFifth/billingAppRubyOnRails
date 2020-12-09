class CptcodesController < ApplicationController
  before_action :set_cptcode, only: [:show, :edit, :update, :destroy]

  # GET /cptcodes
  # GET /cptcodes.json
  def index
    @cptcodes = Cptcode.all
    # by cpt code
    if params[:cpt_code]
      @search_item = params[:cpt_code]
      @cptcodes = @cptcodes.search_by_cpt_code(@search_item)
    end
    # by cpt description
    if params[:cpt_description]
      @search_item = params[:cpt_description]
      @cptcodes = @cptcodes.search_by_cpt_description(@search_item)
    end
  end

  # GET /cptcodes/1
  # GET /cptcodes/1.json
  def show
  end

  # GET /cptcodes/new
  def new
    @cptcode = Cptcode.new
  end

  # GET /cptcodes/1/edit
  def edit
  end

  # POST /cptcodes
  # POST /cptcodes.json
  def create
    @cptcode = Cptcode.new(cptcode_params)

    respond_to do |format|
      if @cptcode.save
        format.html { redirect_to @cptcode, notice: 'Cptcode was successfully created.' }
        format.json { render :show, status: :created, location: @cptcode }
      else
        format.html { render :new }
        format.json { render json: @cptcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cptcodes/1
  # PATCH/PUT /cptcodes/1.json
  def update
    respond_to do |format|
      if @cptcode.update(cptcode_params)
        format.html { redirect_to @cptcode, notice: 'Cptcode was successfully updated.' }
        format.json { render :show, status: :ok, location: @cptcode }
      else
        format.html { render :edit }
        format.json { render json: @cptcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cptcodes/1
  # DELETE /cptcodes/1.json
  def destroy
    @cptcode.destroy
    respond_to do |format|
      format.html { redirect_to cptcodes_url, notice: 'Cptcode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cptcode
      @cptcode = Cptcode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cptcode_params
      params.require(:cptcode).permit(:cpt_code, :cpt_description, :cpt_price)
    end
end
