class JacketsController < ApplicationController
  before_action :set_jacket, only: [:show, :edit, :update, :destroy]

  # GET /jackets
  # GET /jackets.json
  def index
    @jackets = Jacket.all
  end

  # GET /jackets/1
  # GET /jackets/1.json
  def show
  end

  # GET /jackets/new
  def new
    @jacket = Jacket.new
  end

  # GET /jackets/1/edit
  def edit
  end

  # POST /jackets
  # POST /jackets.json
  def create
    @jacket = Jacket.new(jacket_params)

    respond_to do |format|
      if @jacket.save
        format.html { redirect_to @jacket, notice: 'Jacket was successfully created.' }
        format.json { render action: 'show', status: :created, location: @jacket }
      else
        format.html { render action: 'new' }
        format.json { render json: @jacket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jackets/1
  # PATCH/PUT /jackets/1.json
  def update
    respond_to do |format|
      if @jacket.update(jacket_params)
        format.html { redirect_to @jacket, notice: 'Jacket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @jacket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jackets/1
  # DELETE /jackets/1.json
  def destroy
    @jacket.destroy
    respond_to do |format|
      format.html { redirect_to jackets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jacket
      @jacket = Jacket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jacket_params
      params.require(:jacket).permit(:name, :last_worn, :date_acquired, :price)
    end
end
