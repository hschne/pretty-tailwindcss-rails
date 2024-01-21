# frozen_string_literal: true

require_relative "lib/pretty/tailwindcss/rails/version"

Gem::Specification.new do |spec|
  spec.name = "pretty-tailwindcss-rails"
  spec.version = Pretty::Tailwindcss::Rails::VERSION
  spec.authors = ["HansSchnedlitz"]
  spec.email = ["hans.schnedlitz@gmail.com"]

  spec.summary = "TODO: Write a short summary, because RubyGems requires one."
  spec.description = "TODO: Write a longer description or delete this line."
  spec.homepage = "TODO: Put your gem's website or public repo URL here."
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 7.1.0" # guide at: https://bundler.io/guides/creating_gem.html
end
