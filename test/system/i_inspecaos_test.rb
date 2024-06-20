require "application_system_test_case"

class IInspecaosTest < ApplicationSystemTestCase
  setup do
    @i_inspecao = i_inspecaos(:one)
  end

  test "visiting the index" do
    visit i_inspecaos_url
    assert_selector "h1", text: "I inspecaos"
  end

  test "should create i inspecao" do
    visit i_inspecaos_url
    click_on "New i inspecao"

    fill_in "Descricao", with: @i_inspecao.descricao
    fill_in "Nome", with: @i_inspecao.nome
    fill_in "Status", with: @i_inspecao.status
    fill_in "Tipo", with: @i_inspecao.tipo
    click_on "Create I inspecao"

    assert_text "I inspecao was successfully created"
    click_on "Back"
  end

  test "should update I inspecao" do
    visit i_inspecao_url(@i_inspecao)
    click_on "Edit this i inspecao", match: :first

    fill_in "Descricao", with: @i_inspecao.descricao
    fill_in "Nome", with: @i_inspecao.nome
    fill_in "Status", with: @i_inspecao.status
    fill_in "Tipo", with: @i_inspecao.tipo
    click_on "Update I inspecao"

    assert_text "I inspecao was successfully updated"
    click_on "Back"
  end

  test "should destroy I inspecao" do
    visit i_inspecao_url(@i_inspecao)
    click_on "Destroy this i inspecao", match: :first

    assert_text "I inspecao was successfully destroyed"
  end
end
