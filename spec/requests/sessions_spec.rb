# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'user correct login', type: :request do
  headers = {
    'ACCEPT' => 'application/json'
  }
  before do
    @user = build(:user)
    post '/sessions', params: { user: {
      email: @user.email,
      password: @user.password
    } }, headers: headers
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:ok)
  end
end

RSpec.describe 'user error login', type: :request do
  headers = {
    'ACCEPT' => 'application/json'
  }
  before do
    @user = build(:user)
    post '/sessions', params: { user: {
      email: '',
      password: @user.password
    } }, headers: headers
  end

  it 'returns a unauthorized status' do
    expect(response).to have_http_status(:ok)
  end
end
