# frozen_string_literal: true

require "sentry-ruby"

Sentry.init do |config|
  config.dsn = ENV["SENTRY_DSN"]

  # To activate performance monitoring, set one of these options.
  # We recommend adjusting the value in production:
  config.traces_sample_rate = 0.5
  # or
  config.traces_sampler = lambda do |context|
    true
  end
end
