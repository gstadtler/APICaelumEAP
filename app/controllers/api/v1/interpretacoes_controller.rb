class Api::V1::InterpretacoesController < Api::V1::ApiController
  wrap_parameters :interpretacao, include: %i[nome valor_minimo valor_maximo]
  before_action :set_escala
  before_action :set_escala_interpretacao, only: [:show, :update, :destroy]

  # GET /interpretacoes
  def index
    json_response(@escala.interpretacoes)
  end

  # GET /interpretacoes/1
  def show
    json_response(@interpretacao)
  end

  # POST /interpretacoes
  def create
    @escala.interpretacoes.create!(interpretacao_params)
    json_response(@interpretacao, :created)
  end

  # PATCH/PUT /interpretacoes/1
  def update
    @interpretacao.update(interpretacao_params)
    json_response(@interpretacao, :updated)
  end

  # DELETE /interpretacoes/1
  def destroy
    @interpretacao.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_escala
    @escala = Escala.find_by(id: params[:escala_id])
  end

  def set_escala_interpretacao
    @interpretacao = @escala.interpretacoes.find_by!(id: params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def interpretacao_params
    params.require(:interpretacao).permit(:nome, :valor_minimo, :valor_maximo)
  end
end
