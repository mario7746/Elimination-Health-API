# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :meals

  # validates :id
  # validates :email
  # validates :token
end
