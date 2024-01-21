# frozen_string_literal: true

require_relative "lib/pretty/tailwindcss/rails/version"

Gem::Specification.new do |spec|
  spec.name = "pretty-tailwindcss-rails"
  spec.version = Pretty::Tailwindcss::Rails::VERSION
  spec.authors = ["Hans Schnedlitz"]
  spec.email = ["hans.schnedlitz@gmail.com"]

  spec.summary = "Prettier scaffolds and view generators for Rails. Based on Tailwind 🌊 "
  spec.description = "TODO: Write a longer description or delete this line."
  spec.homepage = "https://github.com/hschne/pretty-tailwindcss-rails"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hschne/pretty-tailwindcss-rails"
  spec.metadata["changelog_uri"] = "https://github.com/hschne/pretty-tailwindcss-rails/CHANGELOG.md"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ .git .github Gemfile])
    end
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 7.1.0" # guide at: https://bundler.io/guides/creating_gem.html
end
