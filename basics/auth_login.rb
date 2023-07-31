# frozen_string_literal: true

require_relative 'auth_hash'

## Login class
class Login
  include Auth
  attr_accessor :username, :password

  def initialize(username, password)
    @username = username
    @password = password
  end

  def to_s
    "Username: #{@username} and password: #{@password}"
  end
end

user_one = Login.new('john', 'password2')
password_hashed = user_one.create_hash_digest(user_one.password)
puts user_one, password_hashed
