Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://lockbox-frontend.herokuapp.com'
    resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
credentials: true
  end
end

#   allow do
#     origins 'Heroku Domain : ) '
#     resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
# credentials: true
#   end
# end