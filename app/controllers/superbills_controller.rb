class SuperbillsController < ApplicationController
  before_action :set_superbill, only: [:show, :edit, :update, :destroy]

  # GET /superbills
  # GET /superbills.json
  def index
    @superbills = Superbill.all
  end

  # GET /superbills/1
  # GET /superbills/1.json
  def show
  end

  # GET /superbills/new
  def new
    @superbill = Superbill.new
  end

  # GET /superbills/1/edit
  def edit
  end

  # POST /superbills
  # POST /superbills.json
  def create
    @superbill = Superbill.new(superbill_params)

    respond_to do |format|
      if @superbill.save
        format.html { redirect_to @superbill, notice: 'Superbill was successfully created.' }
        format.json { render :show, status: :created, location: @superbill }
      else
        format.html { render :new }
        format.json { render json: @superbill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /superbills/1
  # PATCH/PUT /superbills/1.json
  def update
    respond_to do |format|
      if @superbill.update(superbill_params)
        format.html { redirect_to @superbill, notice: 'Superbill was successfully updated.' }
        format.json { render :show, status: :ok, location: @superbill }
      else
        format.html { render :edit }
        format.json { render json: @superbill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /superbills/1
  # DELETE /superbills/1.json
  def destroy
    @superbill.destroy
    respond_to do |format|
      format.html { redirect_to superbills_url, notice: 'Superbill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_superbill
      @superbill = Superbill.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def superbill_params
      params.require(:superbill).permit(:superbill_id, :patient_id)
    end
end
