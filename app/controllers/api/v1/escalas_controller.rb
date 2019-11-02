class Api::V1::EscalasController < Api::V1::ApiController
  before_action :set_escala, only: [:show, :edit, :update, :destroy]

  # GET /escalas
  def index
    @escalas = Escala.all

    render json: @escalas
  end

  # GET /escalas/1
  def show
    render json: @escala
  end

  # GET /escalas/new
  def new
    @escala = Escala.new
  end

  # GET /escalas/1/edit
  def edit
  end

  # POST /escalas
  def create
    @escala = Escala.new(escala_params)

    if @escala.save
      render json: @escala, status: :created, location: @escala
    else
      render json: @escala.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /escalas/1
  def update
    if @escala.update(escala_params)
      render json: @escala
    else
      render json: @escala.errors, status: :unprocessable_entity
    end
  end

  # DELETE /escalas/1
  def destroy
    @escala.destroy
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
