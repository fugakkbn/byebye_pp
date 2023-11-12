# frozen_string_literal: true

require_relative 'lib/byebye_pp/version'

Gem::Specification.new do |spec|
  spec.name = 'byebye_pp'
  spec.version = ByebyePp::VERSION
  spec.authors = ['fugakkbn']
  spec.email = ['aax.chiri@gmail.com']

  spec.summary = 'byebye_pp makes stdout easier to read.'
  spec.description = 'Output the separator line, the variable name of the object and inspections are output.'
  spec.homepage = 'https://github.com/fugakkbn/byebye_pp'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/fugakkbn/byebye_pp'
  spec.metadata['changelog_uri'] = 'https://github.com/fugakkbn/byebye_pp/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w(bin/ test/ spec/ features/ .git .circleci appveyor Gemfile))
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r|\Aexe/|) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata['rubygems_mfa_required'] = 'true'
end
