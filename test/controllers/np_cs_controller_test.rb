require 'test_helper'

class NpCsControllerTest < ActionController::TestCase
  setup do
    @npc = npcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:npcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create npc" do
    assert_difference('Npc.count') do
      post :create, npc: { character_sheet: @npc.character_sheet, image: @npc.image, location_id: @npc.location_id, map_id: @npc.map_id, name: @npc.name, notes: @npc.notes }
    end

    assert_redirected_to npc_path(assigns(:npc))
  end

  test "should show npc" do
    get :show, id: @npc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @npc
    assert_response :success
  end

  test "should update npc" do
    patch :update, id: @npc, npc: { character_sheet: @npc.character_sheet, image: @npc.image, location_id: @npc.location_id, map_id: @npc.map_id, name: @npc.name, notes: @npc.notes }
    assert_redirected_to npc_path(assigns(:npc))
  end

  test "should destroy npc" do
    assert_difference('Npc.count', -1) do
      delete :destroy, id: @npc
    end

    assert_redirected_to npcs_path
  end
end
