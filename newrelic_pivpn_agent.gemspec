## This is the rakegem gemspec template. Make sure you read and understand
## all of the comments. Some sections require modification, and others can
## be deleted if you don't need them. Once you understand the contents of
## this file, feel free to delete any comments that begin with two hash marks.
## You can find comprehensive Gem::Specification documentation, at
## http://docs.rubygems.org/read/chapter/20
Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  ## Leave these as is they will be modified for you by the rake gemspec task.
  ## If your rubyforge_project name is different, then edit it and comment out
  ## the sub! line in the Rakefile
  s.name              = 'newrelic_pivpn_agent'
  s.version           = '0.0.4'
  s.date              = '2017-11-14'
  # s.rubyforge_project = 'newrelic_pivpn_agent'

  ## Make sure your summary is short. The description may be as long
  ## as you like.
  s.summary     = "New Relic piVPN (openVPN) monitoring plugin"
  s.description = <<-EOF
New Relic plugin for monitoring piVPN, based on newrelic_openvpn_agent developed by KangaCoders Ltd.
  EOF

  ## List the primary authors. If there are a bunch of authors, it's probably
  ## better to set the email to an email list or something. If you don't have
  ## a custom homepage, consider using your GitHub URL or the like.
  s.authors  = ["Dexterke, SECRET LABORATORIES"]
  s.email    = 'dexterkexnet@yahoo.com'
  s.homepage = 'https://github.com/dexterke/newrelic_pivpn_agent'

  ## This gets added to the $LOAD_PATH so that 'lib/NAME.rb' can be required as
  ## require 'NAME.rb' or'/lib/NAME/file.rb' can be as require 'NAME/file.rb'
  s.require_paths = %w[lib]

  ## This sections is only necessary if you have C extensions.
  #s.require_paths << 'ext'
  #s.extensions = %w[ext/extconf.rb]

  ## If your gem includes any executables, list them here.
  s.executables = ["newrelic_pivpn_agent"]

  ## Specify any RDoc options here. You'll want to add your README and
  ## LICENSE files to the extra_rdoc_files list.
  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README.md]
  
  s.license = 'MIT'

  ## List your runtime dependencies here. Runtime dependencies are those
  ## that are needed for an end user to actually USE your code.  
  s.add_dependency('bundler')
  s.add_dependency('newrelic_plugin', "1.0.3")

  s.post_install_message = <<-EOF
  To get started with this plugin, do
    newrelic_pivpn_agent -h
  to find out how to install and run the plugin agent.
    EOF

  ## Leave this section as-is. It will be automatically generated from the
  ## contents of your Git repository via the gemspec task. DO NOT REMOVE
  ## THE MANIFEST COMMENTS, they are used as delimiters by the task.
  # = MANIFEST =
  s.files = %w[
    Gemfile
    README.md
    Rakefile
    bin/newrelic_pivpn_agent
    config/template_newrelic_plugin.yml
    lib/newrelic_pivpn_agent.rb
    newrelic_pivpn_agent.gemspec
  ]
  # = MANIFEST =

  ## Test files will be grabbed from the file list. Make sure the path glob
  ## matches what you actually use.
  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end