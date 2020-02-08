# frozen_string_literal: true

require 'test_helper'

class ConditionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @condition = conditions(:one)
  end

  test 'should get index' do
    get conditions_url, as: :json
    assert_response :success
  end

  test 'should create condition' do
    assert_difference('Condition.count') do
      post conditions_url, params: { condition: { description: @condition.description, dose: @condition.dose, frequency: @condition.frequency, name: @condition.name } }, as: :json
    end

    assert_response 201
  end

  test 'should show condition' do
    get condition_url(@condition), as: :json
    assert_response :success
  end

  test 'should update condition' do
    patch condition_url(@condition), params: { condition: { description: @condition.description, dose: @condition.dose, frequency: @condition.frequency, name: @condition.name } }, as: :json
    assert_response 200
  end

  test 'should destroy condition' do
    assert_difference('Condition.count', -1) do
      delete condition_url(@condition), as: :json
    end

    assert_response 204
  end
end
