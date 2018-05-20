# frozen_string_literal: true

module ArchangelHelp
  class Engine < ::Rails::Engine
    require "archangel"

    isolate_namespace Archangel
    engine_name "archangel_help"

    config.generators do |gen|
      gen.test_framework :rspec,
                         fixtures: false,
                         view_specs: false,
                         helper_specs: true,
                         routing_specs: false,
                         controller_specs: true,
                         request_specs: true
      gen.fixture_replacement :factory_bot, dir: "spec/factories"
    end

    def self.activate
      Dir[
        File.join(__dir__, "app/**/*_decorator.rb"),
        File.join(__dir__, "app/overrides/**/*.deface")
      ].each do |klass|
        Rails.application.config.cache_classes ? require(klass) : load(klass)
      end
    end

    config.to_prepare(&method(:activate).to_proc)
  end
end
