Gem::Specification.new do |s|
  s.name = 'bandwidth-sdk'
  s.version = '9.1.0'
  s.summary = 'Bandwidth'
  s.description = 'Bandwidth\'s set of APIs'
  s.authors = ['APIMatic SDK Generator']
  s.email = 'support@apimatic.io'
  s.homepage = 'https://apimatic.io'
  s.license = 'MIT'
  s.add_dependency('logging', '~> 2.3')
  s.add_dependency('faraday', '~> 1.0', '<= 1.3.0')
  s.add_dependency('faraday_middleware', '~> 1.0')
  s.add_dependency('certifi', '~> 2018.1', '>= 2018.01.18')
  s.add_dependency('faraday-http-cache', '~> 2.2')
  s.add_dependency('builder', '~> 3.2.4')
  s.add_development_dependency('minitest', '~> 5.14', '>= 5.14.1')
  s.add_development_dependency('minitest-proveit', '~> 1.0')
  s.required_ruby_version = ['>= 2.0']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
