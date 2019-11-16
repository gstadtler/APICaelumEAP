class ResultadosController < ApplicationController
  wrap_parameters :resultado, include: %i[resposta_id parametro_id]
  before_action :set_registro
  before_action :set_registro_resultado, only: [:show, :update, :destroy]

  # GET /resultados
  def index
    json_response(@registro.resultados)
  end

  # GET /resultados/1
  def show
    json_response(@resultado)
  end

  # POST /resultado
  def create
    @registro.resultados.create(resultado_params)
    json_response(@registro.resultados.last, :created)
  end

  # PATCH/PUT /resultados/1
  def update
    @resultado.update(resultado_params)
    json_response(@resultado, :updated)
  end

  # DELETE /resultados/1
  def destroy
    @resultado.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_registro
    @registro = Registro.find_by!(id: params[:registro_id])
  end

  def set_registro_resultado
    @resultado = @registro.resultados.find_by!(id: params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def resultado_params
    params.require(:resultado).permit(:resposta_id, :parametro_id)
  end
end
