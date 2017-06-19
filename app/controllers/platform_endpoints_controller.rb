class PlatformEndpointsController < ApplicationController
  before_action :set_platform_endpoint, only: [:show]
  protect_from_forgery with: :null_session, only: [:create]

  # GET /platform_endpoints
  # GET /platform_endpoints.json
  def index
    @platform_endpoints = PlatformEndpoint.all
  end

  # GET /platform_endpoints/1
  # GET /platform_endpoints/1.json
  def show
  end

  # POST /platform_endpoints
  # POST /platform_endpoints.json
  def create
    binding.pry
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform_endpoint
      @platform_endpoint = PlatformEndpoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platform_endpoint_params
      params.require(:platform_endpoint).permit(:token)
    end
end
