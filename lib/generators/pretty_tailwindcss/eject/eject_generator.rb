# frozen_string_literal: true

module PrettyTailwindcss
  module Generators
    class EjectGenerator < Rails::Generators::Base
      source_root File.expand_path("../", __dir__)

      def create_root_folder
        empty_directory File.join("lib/templates/erb/scaffold")
        empty_directory File.join("lib/templates/erb/controller")
      end

      def copy_scaffold_template_files
        scaffold_templates = [
          "_form.html.erb.tt",
          "edit.html.erb.tt",
          "index.html.erb.tt",
          "new.html.erb.tt",
          "partial.html.erb.tt",
          "show.html.erb.tt"
        ]
        scaffold_templates.each do |file|
          copy_file "scaffold/templates/#{file}", "lib/templates/erb/scaffold/#{file}"
        end
      end

      def copy_controller_template_files
        copy_file "controller/templates/view.html.erb.tt", "lib/templates/erb/controller/view.html.erb.tt"
      end
    end
  end
end
