class Api::V1::ParametrosController < Api::V1::ApiController
  before_action :set_parametro, only: [:show, :edit, :update, :destroy]
  before_action :get_escala

  # GET /parametros
  def index
    @parametros = @escalas.parametros

    render json: @parametros
  end

  # GET /parametros/1
  def show
    render json: @parametro
  end

  # GET /parametros/new
  def new
    @parametro = @escala.parametros.build
  end

  # GET /parametros/1/edit
  def edit

  end

  # POST /parametros
  def create
    @parametro = @escala.parametros.build(parametro_params)
    if @parametro.save
      render json: @parametro, status: :created, location: @parametro
    else
      render json: @parametro.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parametros/1
  def update
    if @parametro.update(parametro_params)
      render json: @parametro
    else
      render json: @parametro.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parametros/1
  def destroy
    @parametro.destroy
  end

  private

    def get_escala
      @escala = Escala.find_by(id: params[:escalas_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_parametro
      @parametro = @escala.parametros.find_by(id: params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def parametro_params
      params.require(:parametro).permit(:nome, :escalas_id)
    end
end
