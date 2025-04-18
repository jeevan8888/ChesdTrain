if Rails.env.development?
  Rails.application.config.hosts << "0091-185-107-80-250.ngrok-free.app"
  Rails.application.config.hosts.clear
elsif Rails.env.production?
  Rails.application.config.hosts << "your-domain.com"
  Rails.application.config.hosts << "0091-185-107-80-250.ngrok-free.app"
end 