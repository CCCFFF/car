class CarCategoriesController < ApplicationController
  before_action :set_car_category, only: [:show, :edit, :update, :destroy]

  # GET /car_categories
  # GET /car_categories.json
  def index
    @car_categories = CarCategory.all
  end

  # GET /car_categories/1
  # GET /car_categories/1.json
  def show
  end

  # GET /car_categories/new
  def new
    @car_category = CarCategory.new
  end

  # GET /car_categories/1/edit
  def edit
  end

  # POST /car_categories
  # POST /car_categories.json
  def create
    @car_category = CarCategory.new(car_category_params)

    respond_to do |format|
      if @car_category.save
        format.html { redirect_to @car_category, notice: 'Car category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @car_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @car_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_categories/1
  # PATCH/PUT /car_categories/1.json
  def update
    respond_to do |format|
      if @car_category.update(car_category_params)
        format.html { redirect_to @car_category, notice: 'Car category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @car_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_categories/1
  # DELETE /car_categories/1.json
  def destroy
    @car_category.destroy
    respond_to do |format|
      format.html { redirect_to car_categories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_category
      @car_category = CarCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_category_params
      params.require(:car_category).permit(:name)
    end
end
