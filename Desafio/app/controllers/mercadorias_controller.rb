class MercadoriasController < ApplicationController
  before_action :set_mercadoria, only: [:show, :edit, :update, :destroy]

  # GET /mercadorias
  # GET /mercadorias.json
  def index
    @mercadorias = Mercadoria.all
  end

  # GET /mercadorias/1
  # GET /mercadorias/1.json
  def show
  end

  # GET /mercadorias/new
  def new
    @mercadoria = Mercadoria.new
  end

  # GET /mercadorias/1/edit
  def edit
  end

  # POST /mercadorias
  # POST /mercadorias.json
  def create
    @mercadoria = Mercadoria.new(mercadoria_params)
    @mercadoria.quantidade = 0
    if @mercadoria.save
      redirect_to mercadorias_path, success: 'Mercadoria cadastrada com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /mercadorias/1
  # PATCH/PUT /mercadorias/1.json
  def update
    respond_to do |format|
      if @mercadoria.update(mercadoria_params)
        format.html { redirect_to mercadorias_path, success: 'Mercadoria was successfully updated.' }
        format.json { render :show, status: :ok, location: @mercadoria }
      else
        format.html { render :edit }
        format.json { render json: @mercadoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mercadorias/1
  # DELETE /mercadorias/1.json
  def destroy
    @mercadoria.destroy
    respond_to do |format|
      format.html { redirect_to mercadorias_url, notice: 'Mercadoria was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mercadoria
      @mercadoria = Mercadoria.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mercadoria_params
      params.require(:mercadoria).permit(:tipo, :nome, :quantidade, :preco)
    end
end
