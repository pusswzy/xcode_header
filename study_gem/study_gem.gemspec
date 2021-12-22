require_relative 'lib/study_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "study_gem"
  spec.version       = StudyGem::VERSION
  spec.authors       = ["pusswzy"]
  spec.email         = ["251121141@qq.com"]

  spec.summary       = "第一个gem命令行学习项目"
  spec.description   = "主要是使用CLAIDE做命令行"
  spec.homepage      = "nil now"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "nil"
  spec.metadata["changelog_uri"] = "nil"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = 'study-maker'
  spec.require_paths = ["lib"]

  spec.add_dependency 'claide', '~>1.0.3'
  spec.add_dependency 'colored2',       '~> 3.1'
end
