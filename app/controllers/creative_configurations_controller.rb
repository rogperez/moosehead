class CreativeConfigurationsController < ApplicationController
  before_action :set_creative_configuration, only: [:show, :edit, :update, :destroy]

  # GET /creative_configurations
  # GET /creative_configurations.json
  def index
    @creative_configurations = CreativeConfiguration.all
  end

  # GET /creative_configurations/1
  # GET /creative_configurations/1.json
  def show
  end

  # GET /creative_configurations/new
  def new
    @creative_configuration = CreativeConfiguration.new
  end

  # GET /creative_configurations/1/edit
  def edit
  end

  # POST /creative_configurations
  # POST /creative_configurations.json
  def create
    @creative_configuration = CreativeConfiguration.new(creative_configuration_params)

    respond_to do |format|
      if @creative_configuration.save
        format.html { redirect_to @creative_configuration, notice: 'Creative configuration was successfully created.' }
        format.json { render :show, status: :created, location: @creative_configuration }
      else
        format.html { render :new }
        format.json { render json: @creative_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creative_configurations/1
  # PATCH/PUT /creative_configurations/1.json
  def update
    respond_to do |format|
      if @creative_configuration.update(creative_configuration_params)
        format.html { redirect_to @creative_configuration, notice: 'Creative configuration was successfully updated.' }
        format.json { render :show, status: :ok, location: @creative_configuration }
      else
        format.html { render :edit }
        format.json { render json: @creative_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creative_configurations/1
  # DELETE /creative_configurations/1.json
  def destroy
    @creative_configuration.destroy
    respond_to do |format|
      format.html { redirect_to creative_configurations_url, notice: 'Creative configuration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creative_configuration
      @creative_configuration = CreativeConfiguration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def creative_configuration_params
      params.require(:creative_configuration).permit(:plan_id, :configuration)
    end
end
