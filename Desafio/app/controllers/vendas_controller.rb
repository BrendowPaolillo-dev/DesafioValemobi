class VendasController < ApplicationController
  before_action :set_venda, only: [:show, :edit, :update, :destroy]

  # GET /vendas
  # GET /vendas.json
  def index
    @vendas = Venda.all
  end

  # GET /vendas/1
  # GET /vendas/1.json
  def show
  end

  # GET /vendas/new
  def new
    @mercadorias = Mercadoria.all
    @venda = Venda.new  
  end

  # GET /vendas/1/edit
  def edit
  end

  # POST /vendas
  # POST /vendas.json
  def create
    @venda = Venda.new(venda_params)
    @mercadoria = @venda.mercadoria
    if @venda.have_mercadoria_in_estoque?
      @mercadoria.quantidade -= @venda.quantidade
      current_user.saldo += @venda.preco
      if @venda.save && @mercadoria.save && current_user.save
        redirect_to mercadorias_path, 
          success: "#{@venda.quantidade} #{@mercadoria.nome} vendidos com sucesso."
      else
        redirect_to new_venda_path, :error => ["Erro ao cadastrar venda."]
      end
    else
        redirect_to new_venda_path, :error => ["Você não possui tanto deste produto em estoque."]

    end
  end



  # DELETE /vendas/1
  # DELETE /vendas/1.json
  def destroy
    @venda.destroy
    respond_to do |format|
      format.html { redirect_to vendas_url, notice: 'Venda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venda
      @venda = Venda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venda_params
      params.require(:venda).permit!
    end
end
