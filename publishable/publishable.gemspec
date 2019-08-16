lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'publishable/version'

Gem::Specification.new do |spec|
	spec.name = 'publishable'
	spec.version = Publishable::VERSION
	spec.authors = ['Julian Kohlman']
	spec.email = %w[juliankohlman@gmail.com]

	spec.summary =
		'A gem that can be used across applications that have published_at fields in their models.'
	spec.description =
		'A gem that can be used across applications that have published_at fields in their models.'
	spec.homepage = 'http://example.com'
	spec.license = 'MIT'

	# Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
	# to allow pushing to a single host or delete this section to allow pushing to any host.
	if spec.respond_to?(:metadata)
		spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

		spec.metadata['homepage_uri'] = spec.homepage
		spec.metadata['source_code_uri'] = 'http://example.com'
		spec.metadata['changelog_uri'] = 'http://example.com'
	else
		raise 'RubyGems 2.0 or newer is required to protect against ' \
				'public gem pushes.'
	end

	# Specify which files should be added to the gem when it is released.
	# The `git ls-files -z` loads the files in the RubyGem that have been added into git.
	spec.files =
		Dir.chdir(File.expand_path('..', __FILE__)) do
			`git ls-files -z`.split("\x0").reject do |f|
				f.match(%r{^(test|spec|features)/})
			end
		end
	spec.bindir = 'exe'
	spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
	spec.require_paths = %w[lib]

	spec.add_development_dependency 'bundler', '~> 1.17'
	spec.add_development_dependency 'rake', '~> 10.0'
	spec.add_development_dependency 'rspec', '~> 3.0'
	spec.add_dependency 'activerecord', '>= 4.0'
end
