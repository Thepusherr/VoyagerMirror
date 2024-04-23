# -*- encoding: utf-8 -*-
# stub: bundler-leak 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "bundler-leak".freeze
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ombulabs".freeze]
  s.bindir = "exe".freeze
  s.date = "2022-03-31"
  s.description = "bundler-leak provides memory leak verification for Bundled apps.".freeze
  s.email = "hello@ombulabs.com".freeze
  s.executables = ["bundle-leak".freeze, "bundler-leak".freeze]
  s.extra_rdoc_files = ["COPYING.txt".freeze, "ChangeLog.md".freeze, "README.md".freeze, "code-of-conduct.md".freeze, "pull_request_template.md".freeze]
  s.files = ["COPYING.txt".freeze, "ChangeLog.md".freeze, "README.md".freeze, "code-of-conduct.md".freeze, "exe/bundle-leak".freeze, "exe/bundler-leak".freeze, "pull_request_template.md".freeze]
  s.homepage = "https://github.com/rubymem/bundler-leak#readme".freeze
  s.licenses = ["GPL-3.0+".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.4.19".freeze
  s.summary = "Memory leaks verification for Bundler".freeze

  s.installed_by_version = "3.4.19" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<thor>.freeze, [">= 0.18", "< 2"])
  s.add_runtime_dependency(%q<bundler>.freeze, [">= 1.2.0", "< 3"])
  s.add_development_dependency(%q<byebug>.freeze, ["~> 11.1"])
end
