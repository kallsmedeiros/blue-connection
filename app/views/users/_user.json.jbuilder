# frozen_string_literal: true

json.extract! user, :id, :first_name, :last_name, :cell_phone, :status, :alteration_user_id, :address, :email, :password, :receive_email, :created_at, :updated_at
json.url user_url(user, format: :json)
