# frozen_string_literal: true

require "rails"
require "rails/test_help"

TAILWINDCSS_TEST_APP_ROOT = Dir.mktmpdir
Rails::Generators.templates_path << File.join(TAILWINDCSS_TEST_APP_ROOT, "lib/templates")

class ActiveSupport::TestCase
  def setup
    FileUtils.rm_rf(TAILWINDCSS_TEST_APP_ROOT)
    FileUtils.mkdir_p(TAILWINDCSS_TEST_APP_ROOT)
  end

  def teardown
    FileUtils.rm_rf(TAILWINDCSS_TEST_APP_ROOT)
  end
end

require_relative "../lib/pretty-tailwindcss-rails"
