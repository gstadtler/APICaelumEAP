class Api::V1::InterpretacoesController < Api::V1::ApiController
  before_action :set_interpretacao, only: [:show, :edit, :update, :destroy]
  before_action :get_escala

  # GET /interpretacoes
  def index
    @interpretacoes = @escala.interpretacoes

    render json: @interpretacoes
  end

  # GET /interpretacoes/1
  def show
    render json: @interpretacao
  end

  # GET /interpretacoes/new
  def new
    @interpretacao = @escala.interpretacoes.build
  end

  # GET /posts/1/edit
  def edit

  end

  # POST /interpretacoes
  def create
    @interpretacao = @escala.interpretacoes.build(interpretacao_params)
    if @interpretacao.save
      render json: @interpretacao, status: :created, location: @interpretacao
    else
      render json: @interpretacao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /interpretacoes/1
  def update
    if @interpretacao.update(interpretacao_params)
      render json: @interpretacao
    else
      render json: @interpretacao.errors, status: :unprocessable_entity
    end
  end

  private

  # DELETE /interpretacoes/1
  def destroy
    @interpretacao.destroy
  end

  def get_escala
    @escala = Escala.find_by(id: params[:escalas_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_interpretacao
    @interpretacao = @escala.interpretacoes.find_by(id: params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def interpretacao_params
    params.require(:interpretacao).permit(:nome, :valor_minimo, :valor_maximo, :escalas_id)
  end
end
