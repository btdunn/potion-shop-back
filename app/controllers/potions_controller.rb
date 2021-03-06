class PotionsController < ApplicationController
  before_action :set_potion, only: [:show, :edit, :update, :destroy]

  # GET /potions
  # GET /potions.json
  def index
    @potions = Potion.all
    render json: @potions
  end

  # GET /potions/1
  # GET /potions/1.json
  def show
    @potion = Potion.find(params[:id])
    render json: @potion
  end

  # GET /potions/new
  def new
    @potion = Potion.new
  end

  # GET /potions/1/edit
  def edit
  end

  # POST /potions
  # POST /potions.json
  def create
    @potion = Potion.new(potion_params)

    respond_to do |format|
      if @potion.save
        format.html { redirect_to @potion, notice: 'Potion was successfully created.' }
        format.json { render :show, status: :created, location: @potion }
      else
        format.html { render :new }
        format.json { render json: @potion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /potions/1
  # PATCH/PUT /potions/1.json
  def update
    respond_to do |format|
      if @potion.update(potion_params)
        format.html { redirect_to @potion, notice: 'Potion was successfully updated.' }
        format.json { render :show, status: :ok, location: @potion }
      else
        format.html { render :edit }
        format.json { render json: @potion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potions/1
  # DELETE /potions/1.json
  def destroy
    @potion.destroy
    respond_to do |format|
      format.html { redirect_to potions_url, notice: 'Potion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_potion
      @potion = Potion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def potion_params
      params.require(:potion).permit(:name, :description, :price)
    end
end
