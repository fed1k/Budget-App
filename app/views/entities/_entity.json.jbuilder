# frozen_string_literal: true

json.extract! entity, :id, :user_id, :name, :amount, :created_at, :updated_at
json.url entity_url(entity, format: :json)
