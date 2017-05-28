class PlatformEndpointsController < ApplicationController
  before_action :set_platform_endpoint, only: [:show, :edit, :update, :destroy]

  # GET /platform_endpoints
  # GET /platform_endpoints.json
  def index
    @platform_endpoints = PlatformEndpoint.all
  end

  # GET /platform_endpoints/1
  # GET /platform_endpoints/1.json
  def show
  end

  # GET /platform_endpoints/new
  def new
    @platform_endpoint = PlatformEndpoint.new
  end

  # GET /platform_endpoints/1/edit
  def edit
  end

  # POST /platform_endpoints
  # POST /platform_endpoints.json
  def create
    @platform_endpoint = PlatformEndpoint.new(platform_endpoint_params)

    respond_to do |format|
      if @platform_endpoint.save
        format.html { redirect_to @platform_endpoint, notice: 'Platform endpoint was successfully created.' }
        format.json { render :show, status: :created, location: @platform_endpoint }
      else
        format.html { render :new }
        format.json { render json: @platform_endpoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platform_endpoints/1
  # PATCH/PUT /platform_endpoints/1.json
  def update
    respond_to do |format|
      if @platform_endpoint.update(platform_endpoint_params)
        format.html { redirect_to @platform_endpoint, notice: 'Platform endpoint was successfully updated.' }
        format.json { render :show, status: :ok, location: @platform_endpoint }
      else
        format.html { render :edit }
        format.json { render json: @platform_endpoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platform_endpoints/1
  # DELETE /platform_endpoints/1.json
  def destroy
    @platform_endpoint.destroy
    respond_to do |format|
      format.html { redirect_to platform_endpoints_url, notice: 'Platform endpoint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform_endpoint
      @platform_endpoint = PlatformEndpoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platform_endpoint_params
      params.fetch(:platform_endpoint, {})
    end
end
