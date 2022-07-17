class PerformersController < ApplicationController
  before_action :set_performer, only: [:show, :edit, :update, :destroy]

  # GET /performers
  def index
    @performers = Performer.all
  end

  # GET /performers/1
  def show
  end

  # GET /performers/new
  def new
    @performer = Performer.new
  end

  # GET /performers/1/edit
  def edit
  end

  # POST /performers
  def create
    @performer = Performer.new(performer_params)

    if @performer.save
      redirect_to @performer, notice: 'Performer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /performers/1
  def update
    if @performer.update(performer_params)
      redirect_to @performer, notice: 'Performer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /performers/1
  def destroy
    @performer.destroy
    redirect_to performers_url, notice: 'Performer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_performer
      @performer = Performer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def performer_params
      params.require(:performer).permit(:name)
    end
end
