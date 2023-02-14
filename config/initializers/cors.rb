Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3001'
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