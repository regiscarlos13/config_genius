# frozen_string_literal: true

require_relative 'lib/config_genius/version'

Gem::Specification.new do |spec|
  spec.name        = 'config_genius'
  spec.version     = ConfigGenius::VERSION
  spec.authors     = ['Regis Nascimento']
  spec.email       = ['regis.nascimento@gmail.com']
  spec.homepage    = 'http://www.fulldev.app.br'
  spec.summary     = 'Genius config'
  spec.description = 'Description of ConfigGenius.'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata['allowed_push_host'] = 'http://www.fulldev.app.br'

  spec.metadata['homepage_uri'] = 'http://www.fulldev.app.br'
  spec.metadata['source_code_uri'] = 'http://www.fulldev.app.br'
  spec.metadata['changelog_uri'] = 'http://www.fulldev.app.br'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  end

  spec.add_dependency 'pagy'
  spec.add_dependency 'rails', '>= 7.0.0'
  spec.add_dependency 'ransack'
end
