# frozen_string_literal: true

class Entity < ApplicationRecord
  belongs_to :user

  validates :name, :amount, presence: true
end
