# frozen_string_literal: true

require "rails/generators/erb/controller/controller_generator"

module PrettyTailwindcss
  module Generators
    class ControllerGenerator < Erb::Generators::ControllerGenerator
      source_root File.expand_path("templates", __dir__)
      source_paths << "lib/templates/erb/controller"
    end
  end
end
