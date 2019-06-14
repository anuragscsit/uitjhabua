class FeesStructuresController < ApplicationController
  before_action :set_fees_structure, only: [:show, :edit, :update, :destroy]

  # GET /fees_structures
  # GET /fees_structures.json
  def index
    @fees_structures = FeesStructure.all
  end

  
  # GET /fees_structures/1
  # GET /fees_structures/1.json
  def show
  end

  # GET /fees_structures/new
  def new
    @fees_structure = FeesStructure.new
  end

  # GET /fees_structures/1/edit
  def edit
  end

  # POST /fees_structures
  # POST /fees_structures.json
  def create
    @fees_structure = FeesStructure.new(fees_structure_params)

    respond_to do |format|
      if @fees_structure.save
        format.html { redirect_to @fees_structure, notice: 'Fees structure was successfully created.' }
        format.json { render :show, status: :created, location: @fees_structure }
      else
        format.html { render :new }
        format.json { render json: @fees_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fees_structures/1
  # PATCH/PUT /fees_structures/1.json
  def update
    respond_to do |format|
      if @fees_structure.update(fees_structure_params)
        format.html { redirect_to @fees_structure, notice: 'Fees structure was successfully updated.' }
        format.json { render :show, status: :ok, location: @fees_structure }
      else
        format.html { render :edit }
        format.json { render json: @fees_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fees_structures/1
  # DELETE /fees_structures/1.json
  def destroy
    @fees_structure.destroy
    respond_to do |format|
      format.html { redirect_to fees_structures_url, notice: 'Fees structure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fees_structure
      @fees_structure = FeesStructure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fees_structure_params
      params.require(:fees_structure).permit(:program, :session, :year, :feesinfo)
    end
end
