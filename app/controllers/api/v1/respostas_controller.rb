class Api::V1::RespostasController < Api::V1::ApiController
  wrap_parameters :resposta, include: %i[nome pontuacao]
  before_action :set_escala
  before_action :set_escala_parametro
  before_action :set_parametro_resposta, only: [:show, :update, :destroy]
  # GET /respostas
  def index
    json_response(@escala.parametros.respostas)
  end

  # GET /respostas/1
  def show
    json_response(@resposta)
  end

  # POST /respostas
  def create
    @parametro.respostas.create!(resposta_params)
    json_response(@parametro, :created)
  end

  # PATCH/PUT /respostas/1
  def update
    @resposta.update(resposta_params)
    json_response(@resposta, :updated)
  end

  # DELETE /respostas/1
  def destroy
    @resposta.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_escala
    @escala = Escala.find_by(id: params[:escala_id])
  end

  def set_escala_parametro
    @parametro = @escala.parametros.find_by!(id: params[:parametro_id])
  end

  def set_parametro_resposta
    @resposta = @parametro.find_by!(id: params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def resposta_params
    params.require(:resposta).permit(:nome, :pontuacao)
  end
end
