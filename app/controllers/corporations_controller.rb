class CorporationsController < ApplicationController
  before_action :set_corporation, only: %i[show edit update destroy]

  # GET /corporations
  # GET /corporations.json
  def index
    @corporations = Corporation.all
  end

  # GET /corporations/1
  # GET /corporations/1.json
  def show; end

  # GET /corporations/new
  def new
    @corporation = Corporation.new
  end

  # GET /corporations/1/edit
  def edit; end

  # POST /corporations
  # POST /corporations.json
  def create
    @corporation = Corporation.new(corporation_params)

    respond_to do |format|
      if @corporation.save
        format.html { redirect_to corporations_path, notice: 'Corporation was successfully created.' }
        format.json { render :show, status: :created, location: @corporation }
      else
        format.html { render :new }
        format.json { render json: @corporation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corporations/1
  # PATCH/PUT /corporations/1.json
  def update
    respond_to do |format|
      if @corporation.update(corporation_params)
        format.html { redirect_to @corporation, notice: 'Corporation was successfully updated.' }
        format.json { render :show, status: :ok, location: @corporation }
      else
        format.html { render :edit }
        format.json { render json: @corporation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corporations/1
  # DELETE /corporations/1.json
  def destroy
    @corporation.destroy
    respond_to do |format|
      format.html { redirect_to corporations_url, notice: 'Corporation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corporation
      @corporation = Corporation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def corporation_params
      params.require(:corporation).permit(:name, :rut, :subsidiary_id)
    end
end
