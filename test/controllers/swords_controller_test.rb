require "test_helper"

class SwordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sword = swords(:one)
  end

  test "should get index" do
    get swords_url, as: :json
    assert_response :success
  end

  test "should create sword" do
    assert_difference("Sword.count") do
      post swords_url, params: { sword: { attack: @sword.attack, description: @sword.description, durability: @sword.durability, material: @sword.material, name: @sword.name, price: @sword.price, type: @sword.type } }, as: :json
    end

    assert_response :created
  end

  test "should show sword" do
    get sword_url(@sword), as: :json
    assert_response :success
  end

  test "should update sword" do
    patch sword_url(@sword), params: { sword: { attack: @sword.attack, description: @sword.description, durability: @sword.durability, material: @sword.material, name: @sword.name, price: @sword.price, type: @sword.type } }, as: :json
    assert_response :success
  end

  test "should destroy sword" do
    assert_difference("Sword.count", -1) do
      delete sword_url(@sword), as: :json
    end

    assert_response :no_content
  end
end
