Rails.application.config.after_initialize do
  Bullet.enable       = true
  Bullet.console      = true
  Bullet.rails_logger = true
end if defined?(Bullet)
