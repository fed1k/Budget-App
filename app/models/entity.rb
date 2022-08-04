# frozen_string_literal: true

class Entity < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :amount, presence: true, numericality: { only_integer: true }
end
