# frozen_string_literal: true

require_relative "lib/omniauth/twitter2/version"

Gem::Specification.new do |spec|
  spec.name = "omniauth-twitter2"
  spec.version = OmniAuth::Twitter2::VERSION
  spec.authors = ["Atsushi Kyoya"]
  spec.email = ["kyoya.atsushi@cyberwave.jp"]

  spec.summary = "Twitter OAuth2 strategy for OmniAuth"
  spec.description = "Twitter OAuth2 strategy for OmniAuth. '2' means OAuth 2.0."
  spec.homepage = "https://github.com/kyoya-atsushi-cyberwave/omniauth-twitter2"
  spec.license = "Apache-2.0"
  spec.required_ruby_version = ">= 2.1.0" # rubocop:disable Gemspec/RequiredRubyVersion

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/kyoya-atsushi-cyberwave/omniauth-twitter2/blob/main/CHANGELOG.md"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "omniauth"
  spec.add_dependency "omniauth-oauth2", "~> 1.0"
end
