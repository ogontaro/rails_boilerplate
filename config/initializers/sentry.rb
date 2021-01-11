# frozen_string_literal: true

Raven.configure do |config|
  config.dsn = ENV["SENTRY_DSN"]
  config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
  config.environments = %w[development test staging production]

  config.before_send = lambda { |event, hint|
    return event unless event.respond_to?(:extra)
    event.extra = event.extra.diet

    if event.extra[:entry_import_issue_attributes]
      issue_attributes = event.extra[:entry_import_issue_attributes]
      EntryImportIssue.find_or_initialize_by(issue_attributes.slice(:partner_operation_corp_branches_entry_service_corps, :external_service_entry_id, :fault_location_type))
                      .update(issue_attributes)
    end

    event # 最後にeventを返さないと通知されない https://docs.sentry.io/clients/ruby/config/
  }
end

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
