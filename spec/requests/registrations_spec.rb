# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'create new user', type: :request do
  before do
    @user = build(:user)
    post '/registrations', params: { user: {
      nome: @user.nome,
      email: @user.email,
      password: @user.password,
      password_confirmation: @user.password_confirmation
    } }
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:ok)
  end
end
