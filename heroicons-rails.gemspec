require_relative "lib/heroicons/version"

Gem::Specification.new do |spec|
  spec.name        = "heroicons-rails"
  spec.version     = Heroicons::VERSION
  spec.authors     = ["Adam Gavlák"]
  spec.email       = ["adam@gavlak.sk"]
  spec.homepage    = "https://github.com/adamgavlak/heroicons-rails"
  spec.summary     = "Rails engine for Heroicons."
  spec.description = "Rails engine for beautiful hand-crafted SVG icons, by the makers of Tailwind CSS."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/adamgavlak/heroicons-rails"
  spec.metadata["changelog_uri"] = "https://github.com/adamgavlak/heroicons-rails/blob/main/CHANGELOG.md"

  spec.files = Dir["{app,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.required_ruby_version = ">= 2.7"

  spec.add_dependency "actionpack", ">= 6.0.0"
  spec.add_dependency "railties", ">= 6.0.0"
end
