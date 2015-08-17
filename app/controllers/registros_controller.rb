class RegistrosController < ApplicationController
  before_action :set_registro, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @registros = Registro.all
    respond_with(@registros)
  end

  def show
    respond_with(@registro)
  end

  def new
    @registro = Registro.new
    respond_with(@registro)
  end

  def edit
  end

  def create
    @registro = Registro.new(registro_params)
    @registro.save
    respond_with(@registro)
  end

  def update
    @registro.update(registro_params)
    respond_with(@registro)
  end

  def destroy
    @registro.destroy
    respond_with(@registro)
  end

  private
    def set_registro
      @registro = Registro.find(params[:id])
    end

    def registro_params
      params.require(:registro).permit(:Nombre, :Segundo_Nombre, :Apellido_Paterno, :Apellido_Materno, :Telefono_principal, :Celular, :Email, :Ocupacion, :Fecha_de_Nacimiento, :Direccion, :Codigo_Postal, :Ciudad, :Estado)
    end
end
