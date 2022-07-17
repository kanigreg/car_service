class ServiceCategoriesController < ApplicationController
  before_action :set_service_category, only: [:show, :edit, :update, :destroy]

  # GET /service_categories
  def index
    @service_categories = ServiceCategory.all
  end

  # GET /service_categories/1
  def show
  end

  # GET /service_categories/new
  def new
    @service_category = ServiceCategory.new
  end

  # GET /service_categories/1/edit
  def edit
  end

  # POST /service_categories
  def create
    @service_category = ServiceCategory.new(service_category_params)

    if @service_category.save
      redirect_to @service_category, notice: 'Service category was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /service_categories/1
  def update
    if @service_category.update(service_category_params)
      redirect_to @service_category, notice: 'Service category was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /service_categories/1
  def destroy
    @service_category.destroy
    redirect_to service_categories_url, notice: 'Service category was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_category
      @service_category = ServiceCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_category_params
      params.require(:service_category).permit(:name)
    end
end
