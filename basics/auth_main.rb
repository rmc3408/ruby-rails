require_relative 'auth_hash'

users = [
  { username: "mashrur", password: "password1" },
  { username: "jack", password: "password2" },
  { username: "arya", password: "password3" },
  { username: "jonshow", password: "password4" },
  { username: "heisenberg", password: "password5" }
]

list_password_hashed = Auth.create_secure_users(users)
# puts list_password_hashed

user_verified = Auth.authenticate_user("jack", "password2", list_password_hashed)
puts user_verified