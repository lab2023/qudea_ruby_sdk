require 'qudea_sdk'

api_token = 'your_api_token'
account_id = 'your_account_id'# Optional

# Qudea object
# -------------------------------------------------------------
qudea = QudeaSDK::REST::Qudea.new(api_token)
# Get user details
puts qudea.me

# Qudea object with account_id
# -------------------------------------------------------------
qudea = QudeaSDK::REST::Qudea.new(api_token, account_id)
# Get user details
puts qudea.me


# Call object
# -------------------------------------------------------------
call = QudeaSDK::REST::Call.new(api_token, account_id)

# Create call
call_params = {
  uuid: 'f615986c-2001-11e5-bdee-6599352d46ce',
  direction: 'in',
  caller: '905325930061',
  callee: '908508850522',
  start_at: '2015-04-16T11:02:02+03:00',
  answer_at: '2015-04-16T11:02:02+03:00',
  end_at: '2015-04-16T11:04:44+03:00',
  provider: 'bulutfon'
}
puts call.create(call_params)