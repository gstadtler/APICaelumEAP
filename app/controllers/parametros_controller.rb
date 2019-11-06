class ParametrosController < ApplicationController
  wrap_parameters :parametro, include: %i[nome]
  before_action :set_escala
  before_action :set_escala_parametro, only: [:show, :update, :destroy]

  # GET /parametros
  def index
    json_response(@escala.parametros)
  end

  # GET /parametros/1
  def show
    json_response(@parametro)
  end

  # POST /parametros
  def create
    @escala.parametros.create!(parametro_params)
    json_response(@escala, :created)
  end

  # PATCH/PUT /parametros/1
  def update
    @parametro.update(parametro_params)
    json_response(@parametro, :updated)
  end

  # DELETE /parametros/1
  def destroy
    @parametro.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_escala
    @escala = Escala.find_by(id: params[:escala_id])
  end

  def set_escala_parametro
    @parametro = @escala.parametros.find_by!(id: params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def parametro_params
    params.require(:parametro).permit(:nome)
  end
end
