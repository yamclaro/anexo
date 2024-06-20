require "test_helper"

class IInspecaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @i_inspecao = i_inspecaos(:one)
  end

  test "should get index" do
    get i_inspecaos_url
    assert_response :success
  end

  test "should get new" do
    get new_i_inspecao_url
    assert_response :success
  end

  test "should create i_inspecao" do
    assert_difference("IInspecao.count") do
      post i_inspecaos_url, params: { i_inspecao: { descricao: @i_inspecao.descricao, nome: @i_inspecao.nome, status: @i_inspecao.status, tipo: @i_inspecao.tipo } }
    end

    assert_redirected_to i_inspecao_url(IInspecao.last)
  end

  test "should show i_inspecao" do
    get i_inspecao_url(@i_inspecao)
    assert_response :success
  end

  test "should get edit" do
    get edit_i_inspecao_url(@i_inspecao)
    assert_response :success
  end

  test "should update i_inspecao" do
    patch i_inspecao_url(@i_inspecao), params: { i_inspecao: { descricao: @i_inspecao.descricao, nome: @i_inspecao.nome, status: @i_inspecao.status, tipo: @i_inspecao.tipo } }
    assert_redirected_to i_inspecao_url(@i_inspecao)
  end

  test "should destroy i_inspecao" do
    assert_difference("IInspecao.count", -1) do
      delete i_inspecao_url(@i_inspecao)
    end

    assert_redirected_to i_inspecaos_url
  end
end
