class SyohinsController < ApplicationController
  before_action :set_syohin, only: [:show, :edit, :update, :destroy]

  # GET /syohins
  # GET /syohins.json
  def index
    @syohins = Syohin.all
  end

  # GET /syohins/1
  # GET /syohins/1.json
  def show
  end

  # GET /syohins/new
  def new
    @syohin = Syohin.new
  end

  # GET /syohins/1/edit
  def edit
  end

  # POST /syohins
  # POST /syohins.json
  def create
    @syohin = Syohin.new(syohin_params)

    respond_to do |format|
      if @syohin.save
        format.html { redirect_to @syohin, notice: 'Syohin was successfully created.' }
        format.json { render :show, status: :created, location: @syohin }
      else
        format.html { render :new }
        format.json { render json: @syohin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syohins/1
  # PATCH/PUT /syohins/1.json
  def update
    @syohin.assign_attributes(syohin_params)
    @syohin.kingaku = @syohin.kingaku.round(-1)
    @syohin.record_datetime += 1.day
    respond_to do |format|
      if @syohin.save
        format.html { redirect_to @syohin, notice: 'Syohin was successfully updated.' }
        format.json { render :show, status: :ok, location: @syohin }
      else
        format.html { render :edit }
        format.json { render json: @syohin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syohins/1
  # DELETE /syohins/1.json
  def destroy
    @syohin.destroy
    respond_to do |format|
      format.html { redirect_to syohins_url, notice: 'Syohin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syohin
      @syohin = Syohin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def syohin_params
      params.require(:syohin).permit(:kingaku, :record_datetime)
    end
end
