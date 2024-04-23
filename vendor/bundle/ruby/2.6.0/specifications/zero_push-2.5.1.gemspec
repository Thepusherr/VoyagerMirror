# -*- encoding: utf-8 -*-
# stub: zero_push 2.5.1 ruby lib

Gem::Specification.new do |s|
  s.name = "zero_push".freeze
  s.version = "2.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Stefan Natchev".freeze, "Adam Duke".freeze]
  s.date = "2015-01-31"
  s.description = "ZeroPush is a simple service for sending iOS push notifications. (http://zeropush.com)".freeze
  s.email = ["stefan.natchev@gmail.com".freeze, "adam.v.duke@gmail.com".freeze]
  s.homepage = "https://zeropush.com".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9".freeze)
  s.rubygems_version = "3.4.20".freeze
  s.summary = "A gem for interacting with the ZeroPush API. (http://zeropush.com)".freeze

  s.installed_by_version = "3.4.20" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<faraday>.freeze, ["~> 0.9.0"])
  s.add_runtime_dependency(%q<faraday_middleware>.freeze, ["~> 0.9.0"])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 5.3.5"])
  s.add_development_dependency(%q<minitest-around>.freeze, ["~> 0.2.0"])
  s.add_development_dependency(%q<mocha>.freeze, ["~> 1.1.0"])
  s.add_development_dependency(%q<rake>.freeze, ["~> 10.3.2"])
  s.add_development_dependency(%q<railties>.freeze, ["~> 4.1.4"])
  s.add_development_dependency(%q<pry>.freeze, [">= 0"])
  s.add_development_dependency(%q<webmock>.freeze, ["~> 1.20.4"])
end
