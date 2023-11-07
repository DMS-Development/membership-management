Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*' # Consider setting to specific domains for security, e.g., 'example.com'

    resource '*',
             headers: :any,
             methods: [:get, :post, :patch, :put, :delete, :options, :head],
             expose: ['Authorization'],
             max_age: 600
  end
end