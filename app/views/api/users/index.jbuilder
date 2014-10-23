json.users @users do |user|
  json.id    user.id
  json.name user.name
  json.email user.email
  json.token user.token
  json.sign_in_count user.sign_in_count
  json.last_sign_in_at user.last_sign_in_at
  json.current_sign_in_ip user.current_sign_in_ip
end