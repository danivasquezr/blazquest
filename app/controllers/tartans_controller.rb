class TartansController < ApplicationController
  before_action :set_tartan, only: [:show, :edit, :update, :destroy]

  # GET /tartans
  # GET /tartans.json
  def index
    @tartans = Tartan.all
  end

  # GET /tartans/1
  # GET /tartans/1.json
  def show
  end

  # GET /tartans/new
  def new
    @tartan = Tartan.new
  end

  # GET /tartans/1/edit
  def edit
  end

  # POST /tartans
  # POST /tartans.json
  def create
    @tartan = Tartan.new(tartan_params)

    respond_to do |format|
      if @tartan.save
        format.html { redirect_to @tartan, notice: 'Tartan was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tartan }
      else
        format.html { render action: 'new' }
        format.json { render json: @tartan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tartans/1
  # PATCH/PUT /tartans/1.json
  def update
    respond_to do |format|
      if @tartan.update(tartan_params)
        format.html { redirect_to @tartan, notice: 'Tartan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tartan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tartans/1
  # DELETE /tartans/1.json
  def destroy
    @tartan.destroy
    respond_to do |format|
      format.html { redirect_to tartans_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tartan
      @tartan = Tartan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tartan_params
      params.require(:tartan).permit(:tartan, :tartext, :surname_id)
    end
end
