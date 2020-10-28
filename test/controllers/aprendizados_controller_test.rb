require 'test_helper'

class AprendizadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aprendizado = aprendizados(:one)
  end

  test "should get index" do
    get aprendizados_url
    assert_response :success
  end

  test "should get new" do
    get new_aprendizado_url
    assert_response :success
  end

  test "should create aprendizado" do
    assert_difference('Aprendizado.count') do
      post aprendizados_url, params: { aprendizado: { content: @aprendizado.content, date: @aprendizado.date } }
    end

    assert_redirected_to aprendizado_url(Aprendizado.last)
  end

  test "should show aprendizado" do
    get aprendizado_url(@aprendizado)
    assert_response :success
  end

  test "should get edit" do
    get edit_aprendizado_url(@aprendizado)
    assert_response :success
  end

  test "should update aprendizado" do
    patch aprendizado_url(@aprendizado), params: { aprendizado: { content: @aprendizado.content, date: @aprendizado.date } }
    assert_redirected_to aprendizado_url(@aprendizado)
  end

  test "should destroy aprendizado" do
    assert_difference('Aprendizado.count', -1) do
      delete aprendizado_url(@aprendizado)
    end

    assert_redirected_to aprendizados_url
  end
end
