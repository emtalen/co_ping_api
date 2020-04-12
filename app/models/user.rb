# frozen_string_literal: true

class User < ActiveRecord::Base
  extend Devise::Models
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
  validates_presence_of :role
  enum role: [ :admin, :user ]
  belongs_to :coop, foreign_key: :coop_id
end
