class MaintenanceCategoriesController < ApplicationController
  before_action :set_maintenance_category, only: [:show, :edit, :update, :destroy]

  # GET /maintenance_categories
  # GET /maintenance_categories.json
  def index
    @maintenance_categories = MaintenanceCategory.all
  end

  # GET /maintenance_categories/1
  # GET /maintenance_categories/1.json
  def show
  end

  # GET /maintenance_categories/new
  def new
    @maintenance_category = MaintenanceCategory.new
  end

  # GET /maintenance_categories/1/edit
  def edit
  end

  # POST /maintenance_categories
  # POST /maintenance_categories.json
  def create
    @maintenance_category = MaintenanceCategory.new(maintenance_category_params)

    respond_to do |format|
      if @maintenance_category.save
        format.html { redirect_to @maintenance_category, notice: 'Maintenance category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @maintenance_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @maintenance_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maintenance_categories/1
  # PATCH/PUT /maintenance_categories/1.json
  def update
    respond_to do |format|
      if @maintenance_category.update(maintenance_category_params)
        format.html { redirect_to @maintenance_category, notice: 'Maintenance category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @maintenance_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maintenance_categories/1
  # DELETE /maintenance_categories/1.json
  def destroy
    @maintenance_category.destroy
    respond_to do |format|
      format.html { redirect_to maintenance_categories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maintenance_category
      @maintenance_category = MaintenanceCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maintenance_category_params
      params.require(:maintenance_category).permit(:name)
    end
end
