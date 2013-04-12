FAYE_SERVER = if Rails.env.production?
    "http://weidaxue.me:9292/faye" 
  else
    "http://127.0.0.1:9292/faye"
  end