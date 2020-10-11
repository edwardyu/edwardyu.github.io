# -*- encoding: utf-8 -*-
# stub: jekyll-theme-hacker 0.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-theme-hacker".freeze
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jason Costello".freeze, "GitHub, Inc.".freeze]
  s.date = "2016-12-14"
  s.email = ["opensource+jekyll-theme-hacker@github.com".freeze]
  s.homepage = "https://github.com/pages-themes/hacker".freeze
  s.licenses = ["CC0-1.0".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Hacker is a Jekyll theme for GitHub Pages".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>.freeze, ["~> 3.3"])
    else
      s.add_dependency(%q<jekyll>.freeze, ["~> 3.3"])
    end
  else
    s.add_dependency(%q<jekyll>.freeze, ["~> 3.3"])
  end
end