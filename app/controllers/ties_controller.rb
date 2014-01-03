class TiesController < ApplicationController
  before_action :set_ty, only: [:show, :edit, :update, :destroy]

  # GET /ties
  # GET /ties.json
  def index
    @ties = Tie.all
  end

  # GET /ties/1
  # GET /ties/1.json
  def show
  end

  # GET /ties/new
  def new
    @ty = Tie.new
  end

  # GET /ties/1/edit
  def edit
  end

  # POST /ties
  # POST /ties.json
  def create
    @ty = Tie.new(ty_params)

    respond_to do |format|
      if @ty.save
        format.html { redirect_to @ty, notice: 'Tie was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ty }
      else
        format.html { render action: 'new' }
        format.json { render json: @ty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ties/1
  # PATCH/PUT /ties/1.json
  def update
    respond_to do |format|
      if @ty.update(ty_params)
        format.html { redirect_to @ty, notice: 'Tie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ties/1
  # DELETE /ties/1.json
  def destroy
    @ty.destroy
    respond_to do |format|
      format.html { redirect_to ties_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ty
      @ty = Tie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ty_params
      params.require(:tie).permit(:name, :last_worn, :date_acquired, :price)
    end
end
