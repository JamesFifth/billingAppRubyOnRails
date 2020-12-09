class IcdcodesController < ApplicationController
  before_action :set_icdcode, only: [:show, :edit, :update, :destroy]

  # GET /icdcodes
  # GET /icdcodes.json
  def index
    @icdcodes = Icdcode.all
    # by diagnosis code
    if params[:diagnosis_code]
      @search_item = params[:diagnosis_code]
      @icdcodes = @icdcodes.search_by_diagnosis_code(@search_item)
    end
    # by full code
    if params[:full_code]
      @search_item = params[:full_code]
      @icdcodes = @icdcodes.search_by_full_code(@search_item)
    end
    # by abbreviated description
    if params[:abbreviated_description]
      @search_item = params[:abbreviated_description]
      @icdcodes = @icdcodes.search_by_abbreviated_description(@search_item)
    end
    # by category title
    if params[:category_title]
      @search_item = params[:category_title]
      @icdcodes = @icdcodes.search_by_category_title(@search_item)
    end
  end

  # GET /icdcodes/1
  # GET /icdcodes/1.json
  def show
  end

  # GET /icdcodes/new
  def new
    @icdcode = Icdcode.new
  end

  # GET /icdcodes/1/edit
  def edit
  end

  # POST /icdcodes
  # POST /icdcodes.json
  def create
    @icdcode = Icdcode.new(icdcode_params)

    respond_to do |format|
      if @icdcode.save
        format.html { redirect_to @icdcode, notice: 'Icdcode was successfully created.' }
        format.json { render :show, status: :created, location: @icdcode }
      else
        format.html { render :new }
        format.json { render json: @icdcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /icdcodes/1
  # PATCH/PUT /icdcodes/1.json
  def update
    respond_to do |format|
      if @icdcode.update(icdcode_params)
        format.html { redirect_to @icdcode, notice: 'Icdcode was successfully updated.' }
        format.json { render :show, status: :ok, location: @icdcode }
      else
        format.html { render :edit }
        format.json { render json: @icdcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /icdcodes/1
  # DELETE /icdcodes/1.json
  def destroy
    @icdcode.destroy
    respond_to do |format|
      format.html { redirect_to icdcodes_url, notice: 'Icdcode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_icdcode
      @icdcode = Icdcode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def icdcode_params
      params.require(:icdcode).permit(:category_code, :diagnosis_code, :FULL_CODE, :abbreviated_description, :full_description, :category_title)
    end
end
