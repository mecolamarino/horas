require 'test_helper'

class ComputersControllerTest < ActionController::TestCase
  setup do
    @computer = computers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:computers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create computer" do
    assert_difference('Computer.count') do
      post :create, computer: { aclaraciones: @computer.aclaraciones, cantidadmemoria: @computer.cantidadmemoria, company_id: @computer.company_id, fechacompimpresora: @computer.fechacompimpresora, fechacompmemoria: @computer.fechacompmemoria, fechacompmicro: @computer.fechacompmicro, fechacompmonitor: @computer.fechacompmonitor, fechacompmother: @computer.fechacompmother, fechacompra: @computer.fechacompra, fechacompscanner: @computer.fechacompscanner, fechacompsisop: @computer.fechacompsisop, ip: @computer.ip, mac: @computer.mac, memory_id: @computer.memory_id, microprocessor_id: @computer.microprocessor_id, motherboard_id: @computer.motherboard_id, nombre: @computer.nombre, numerolicen: @computer.numerolicen, numserie: @computer.numserie, password: @computer.password, placared: @computer.placared, placavideo: @computer.placavideo, printer_id: @computer.printer_id, scanner_id: @computer.scanner_id, screen_id: @computer.screen_id, system_id: @computer.system_id, unidadoptica: @computer.unidadoptica }
    end

    assert_redirected_to computer_path(assigns(:computer))
  end

  test "should show computer" do
    get :show, id: @computer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @computer
    assert_response :success
  end

  test "should update computer" do
    put :update, id: @computer, computer: { aclaraciones: @computer.aclaraciones, cantidadmemoria: @computer.cantidadmemoria, company_id: @computer.company_id, fechacompimpresora: @computer.fechacompimpresora, fechacompmemoria: @computer.fechacompmemoria, fechacompmicro: @computer.fechacompmicro, fechacompmonitor: @computer.fechacompmonitor, fechacompmother: @computer.fechacompmother, fechacompra: @computer.fechacompra, fechacompscanner: @computer.fechacompscanner, fechacompsisop: @computer.fechacompsisop, ip: @computer.ip, mac: @computer.mac, memory_id: @computer.memory_id, microprocessor_id: @computer.microprocessor_id, motherboard_id: @computer.motherboard_id, nombre: @computer.nombre, numerolicen: @computer.numerolicen, numserie: @computer.numserie, password: @computer.password, placared: @computer.placared, placavideo: @computer.placavideo, printer_id: @computer.printer_id, scanner_id: @computer.scanner_id, screen_id: @computer.screen_id, system_id: @computer.system_id, unidadoptica: @computer.unidadoptica }
    assert_redirected_to computer_path(assigns(:computer))
  end

  test "should destroy computer" do
    assert_difference('Computer.count', -1) do
      delete :destroy, id: @computer
    end

    assert_redirected_to computers_path
  end
end
