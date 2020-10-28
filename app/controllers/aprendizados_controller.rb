class AprendizadosController < ApplicationController
  before_action :set_aprendizado, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /aprendizados
  # GET /aprendizados.json
  def index
    @aprendizados = Aprendizado.all
  end

  # GET /aprendizados/1
  # GET /aprendizados/1.json
  def show
  end

  # GET /aprendizados/new
  def new
    @aprendizado = Aprendizado.new
  end

  # GET /aprendizados/1/edit
  def edit
  end

  # POST /aprendizados
  # POST /aprendizados.json
  def create
    @aprendizado = Aprendizado.new(aprendizado_params)

    respond_to do |format|
      if @aprendizado.save
        format.html { redirect_to @aprendizado, notice: 'Aprendizado was successfully created.' }
        format.json { render :show, status: :created, location: @aprendizado }
      else
        format.html { render :new }
        format.json { render json: @aprendizado.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /aprendizados/1
  # PATCH/PUT /aprendizados/1.json
  def update
    respond_to do |format|
      if @aprendizado.update(aprendizado_params)
        format.html { redirect_to @aprendizado, notice: 'Aprendizado was successfully updated.' }
        format.json { render :show, status: :ok, location: @aprendizado }
      else
        format.html { render :edit }
        format.json { render json: @aprendizado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aprendizados/1
  # DELETE /aprendizados/1.json
  def destroy
    @aprendizado.destroy
    respond_to do |format|
      format.html { redirect_to aprendizados_url, notice: 'Aprendizado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aprendizado
      @aprendizado = Aprendizado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aprendizado_params
      params.require(:aprendizado).permit(:date, :content)
    end
end
