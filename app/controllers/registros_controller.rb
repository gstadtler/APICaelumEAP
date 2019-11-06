class RegistrosController < ApplicationController
  wrap_parameters :registro, include: %i[pontuacao escala_id]
  before_action :set_paciente
  before_action :set_paciente_registro, only: [:show, :update, :destroy]

  # GET /registros
  def index
    json_response(@paciente.registros)
  end

  # GET /registros/1
  def show
    json_response(@registro)
  end

  # POST /registro
  def create
    @paciente.registros.create(registro_params)
    json_response(@paciente.registros.last, :created)
  end

  # PATCH/PUT /registros/1
  def update
    @registro.update(registro_params)
    json_response(@registro, :updated)
  end

  # DELETE /registros/1
  def destroy
    @registro.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_paciente
    @paciente = Paciente.find_by!(id: params[:paciente_id])
  end

  def set_paciente_registro
    @registro = @paciente.registros.find_by!(id: params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def registro_params
    params.require(:registro).permit(:pontuacao, :escala_id)
  end
end
