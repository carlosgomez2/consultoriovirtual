require 'test_helper'

class RegistrosControllerTest < ActionController::TestCase
  setup do
    @registro = registros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registro" do
    assert_difference('Registro.count') do
      post :create, registro: { Apellido_Materno: @registro.Apellido_Materno, Apellido_Paterno: @registro.Apellido_Paterno, Celular: @registro.Celular, Ciudad: @registro.Ciudad, Codigo_Postal: @registro.Codigo_Postal, Direccion: @registro.Direccion, Email: @registro.Email, Estado: @registro.Estado, Fecha_de_Nacimiento: @registro.Fecha_de_Nacimiento, Nombre: @registro.Nombre, Ocupacion: @registro.Ocupacion, Segundo_Nombre: @registro.Segundo_Nombre, Telefono_principal: @registro.Telefono_principal }
    end

    assert_redirected_to registro_path(assigns(:registro))
  end

  test "should show registro" do
    get :show, id: @registro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registro
    assert_response :success
  end

  test "should update registro" do
    patch :update, id: @registro, registro: { Apellido_Materno: @registro.Apellido_Materno, Apellido_Paterno: @registro.Apellido_Paterno, Celular: @registro.Celular, Ciudad: @registro.Ciudad, Codigo_Postal: @registro.Codigo_Postal, Direccion: @registro.Direccion, Email: @registro.Email, Estado: @registro.Estado, Fecha_de_Nacimiento: @registro.Fecha_de_Nacimiento, Nombre: @registro.Nombre, Ocupacion: @registro.Ocupacion, Segundo_Nombre: @registro.Segundo_Nombre, Telefono_principal: @registro.Telefono_principal }
    assert_redirected_to registro_path(assigns(:registro))
  end

  test "should destroy registro" do
    assert_difference('Registro.count', -1) do
      delete :destroy, id: @registro
    end

    assert_redirected_to registros_path
  end
end
