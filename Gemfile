source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in heroicons.gemspec.
gemspec

rails_version = ENV.fetch("RAILS_VERSION", "6.1")

if rails_version == "main"
  rails_constraint = { github: "rails/rails" }
else
  rails_constraint = "~> #{rails_version}.0"
end

gem "rails", rails_constraint

group :development, :test do
  gem "debug", ">= 1.0.0"
end
