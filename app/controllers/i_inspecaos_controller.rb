class IInspecaosController < ApplicationController
  before_action :set_i_inspecao, only: %i[ show edit update destroy ]

  # GET /i_inspecaos or /i_inspecaos.json
  def index
    @i_inspecaos = IInspecao.all
  end

  # GET /i_inspecaos/1 or /i_inspecaos/1.json
  def show
  end

  # GET /i_inspecaos/new
  def new
    @i_inspecao = IInspecao.new
  end

  # GET /i_inspecaos/1/edit
  def edit
  end

  # POST /i_inspecaos or /i_inspecaos.json
  def create
    @i_inspecao = IInspecao.new(i_inspecao_params)

    respond_to do |format|
      if @i_inspecao.save
        format.html { redirect_to i_inspecao_url(@i_inspecao), notice: "I inspecao was successfully created." }
        format.json { render :show, status: :created, location: @i_inspecao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @i_inspecao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /i_inspecaos/1 or /i_inspecaos/1.json
  def update
    respond_to do |format|
      if @i_inspecao.update(i_inspecao_params)
        format.html { redirect_to i_inspecao_url(@i_inspecao), notice: "I inspecao was successfully updated." }
        format.json { render :show, status: :ok, location: @i_inspecao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @i_inspecao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /i_inspecaos/1 or /i_inspecaos/1.json
  def destroy
    @i_inspecao.destroy!

    respond_to do |format|
      format.html { redirect_to i_inspecaos_url, notice: "I inspecao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def destroy_file
    file = ActiveStorage::Attachment.find(params[:id])
    file.purge
    respond_to do |format|
        format.html { redirect_to i_inspecao_url(@i_inspecao), notice: "I inspecao was successfully created." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_i_inspecao
      @i_inspecao = IInspecao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def i_inspecao_params
      params.require(:i_inspecao).permit(:nome, :descricao, :tipo, :status, :i_inspecao_anexo, :id)
    end
end
