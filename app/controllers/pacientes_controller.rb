class PacientesController < ApplicationController
  include CurrentUserConcern
  before_action :set_paciente, only: [:show, :update, :destroy]

  # GET /pacientes

  def index
    @pacientes = Paciente.find_by(user_id: 6)
    json_response(@pacientes)
  end

  # GET /pacientes/1

  def show
    render json: @paciente
  end

  # POST /pacientes

  def create
    @paciente = @current_user.pacientes.create(paciente_params)
    json_response(@paciente, :created)
  end

  # PATCH/PUT /pacientes/1

  def update
    @paciente.update(paciente_params)
    json_response(@escala, :updated)
  end

  # DELETE /pacientes/1

  def destroy
    @paciente.destroy
    head :no_content
  end

  private

    # Use callbacks to share common setup or constraints between actions.

    def set_paciente
      @paciente = Paciente.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.

    def paciente_params
      params.require(:paciente).permit(:nome, :cpf, :genero, :hip_diag, :idade)
    end
end
