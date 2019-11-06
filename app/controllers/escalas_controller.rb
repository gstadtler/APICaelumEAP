class EscalasController < ApplicationController
  before_action :set_escala, only: [:show, :update, :destroy]

  # GET /escalas
  def index
    @escalas = Escala.all
    json_response(@escalas)
  end

  # POST /escalas
  def create
    @escala = Escala.create(escala_params)
    json_response(@escala, :created)
  end

  # GET /escalas/:id
  def show
    json_response(@escala)
  end

  # PUT /escalas/1
  def update
    @escala.update(escala_params)
    json_response(@escala, :updated)
  end

  # DELETE /escalas/1
  def destroy
    @escala.destroy
    head :no_content
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_escala
    @escala = Escala.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def escala_params
    params.require(:escala).permit(:nome)
  end
end
