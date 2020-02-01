class DrugsController < ApplicationController
  before_action :set_drug, only: [:show, :update, :destroy]

  # GET /drugs
  def index
    @drugs = Drug.all

    render json: @drugs
  end

  # GET /drugs/1
  def show
    render json: @drug
  end

  # POST /drugs
  def create
    @drug = Drug.new(drug_params)

    if @drug.save
      render json: @drug, status: :created, location: @drug
    else
      render json: @drug.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /drugs/1
  def update
    if @drug.update(drug_params)
      render json: @drug
    else
      render json: @drug.errors, status: :unprocessable_entity
    end
  end

  # DELETE /drugs/1
  def destroy
    @drug.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drug
      @drug = Drug.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def drug_params
      drug_params = params.require(:drug).permit(:generic_name, :dose, :frequency, :description)
      drug_params[:dose] = Range.new(params[:dose].first, params[:dose].last)
      drug_params[:frequency] = Range.new(params[:frequency].first, params[:frequency].last)
      drug_params
    end
end
