class ComprarController < ApplicationController
  before_action :set_comprar, only: [:show, :edit, :update, :destroy]

  # GET /comprars
  # GET /comprars.json
  def index
    @mercadorias = Mercadoria.all
    @item_compra = ItemCompra.new
  end

  # GET /comprars/1
  # GET /comprars/1.json
  def show
  end

  # GET /comprars/new
  def new
    @comprar = Comprar.new
  end

  # GET /comprars/1/edit
  def edit
  end

  # POST /comprars
  # POST /comprars.json
  def create
    @compra = Compra.new
    @item_compra = ItemCompra.new(item_compra_params)
    @mercadoria = @item_compra.mercadoria
    @mercadoria.quantidade += @item_compra.quantidade

    @compra.itens_compra << @item_compra
    respond_to do |format|
      if @compra.save && @mercadoria.save
        format.html { redirect_to mercadorias_path, 
          success: "#{@item_compra.quantidade} #{@mercadoria.nome} comprados com sucesso." }
        format.json { render :show, status: :created, location: @comprar }
      else
        format.html { render :new }
        format.json { render json: @comprar.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /comprars/1
  # DELETE /comprars/1.json
  def destroy
    @comprar.destroy
    respond_to do |format|
      format.html { redirect_to comprars_url, notice: 'Comprar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comprar
      @comprar = Comprar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_compra_params
      params.require("/comprar").permit!
    end
end
