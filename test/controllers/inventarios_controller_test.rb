require 'test_helper'

class InventariosControllerTest < ActionController::TestCase
  setup do
    @inventario = inventarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventario" do
    assert_difference('Inventario.count') do
      post :create, inventario: { area: @inventario.area, costo: @inventario.costo, cpu: @inventario.cpu, direccion_mac: @inventario.direccion_mac, disco_duro: @inventario.disco_duro, estado_general: @inventario.estado_general, marca: @inventario.marca, modelo: @inventario.modelo, monitor: @inventario.monitor, ram: @inventario.ram, sistema_operativo: @inventario.sistema_operativo, tarjeta_madre: @inventario.tarjeta_madre, tipo: @inventario.tipo, tipo_conexion: @inventario.tipo_conexion, usuario: @inventario.usuario }
    end

    assert_redirected_to inventario_path(assigns(:inventario))
  end

  test "should show inventario" do
    get :show, id: @inventario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventario
    assert_response :success
  end

  test "should update inventario" do
    patch :update, id: @inventario, inventario: { area: @inventario.area, costo: @inventario.costo, cpu: @inventario.cpu, direccion_mac: @inventario.direccion_mac, disco_duro: @inventario.disco_duro, estado_general: @inventario.estado_general, marca: @inventario.marca, modelo: @inventario.modelo, monitor: @inventario.monitor, ram: @inventario.ram, sistema_operativo: @inventario.sistema_operativo, tarjeta_madre: @inventario.tarjeta_madre, tipo: @inventario.tipo, tipo_conexion: @inventario.tipo_conexion, usuario: @inventario.usuario }
    assert_redirected_to inventario_path(assigns(:inventario))
  end

  test "should destroy inventario" do
    assert_difference('Inventario.count', -1) do
      delete :destroy, id: @inventario
    end

    assert_redirected_to inventarios_path
  end
end
