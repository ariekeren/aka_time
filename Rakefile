require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/packagetask'
require 'rake/gempackagetask'
require 'rake/contrib/rubyforgepublisher'
require File.join(File.dirname(__FILE__), 'lib', 'aka_time', 'version')

PKG_NAME      = 'aka_time'
PKG_VERSION   = AkaTime::VERSION::STRING
PKG_FILE_NAME = "#{PKG_NAME}-#{PKG_VERSION}"

RELEASE_NAME  = "REL #{PKG_VERSION}"

RUBY_FORGE_PROJECT = "aka_time"
RUBY_FORGE_USER    = "ariekusuma"

PKG_FILES = FileList[
  "Rakefile", "test/*", "lib/*", "lib/**/*", "resources/*"
].exclude("rdoc").to_a

# Generate the RDoc documentation

Rake::RDocTask.new { |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = "Aka Time - ArieKeren Time"
  rdoc.options << '--line-numbers' << '--inline-source' << '-A cattr_accessor=object'
  rdoc.rdoc_files.include('README', 'CHANGES', 'AUTHORS', 'MIT-LICENSE', 'TODO')
  rdoc.rdoc_files.include('lib/**/*.rb')
  rdoc.rdoc_files.include('resources/*')
}

# Enhance rdoc task to copy referenced images also
task :rdoc do
  FileUtils.copy "resources/aka_time.jpg", "rdoc/aka_time.jpg"
end

spec = Gem::Specification.new do |s|
  s.name         = PKG_NAME
  s.version      = PKG_VERSION
  s.author       = 'Arie Kusuma Atmaja'
  s.email        = 'ariekusumaatmaja@gmail.com'
  s.homepage     = 'http://aka.rubyforge.org/projects/aka_time/rdoc/index.html'
  s.platform     = Gem::Platform::RUBY
  s.summary      = <<-EOF
    AkaTime / aka_time / ArieKeren Time adalah Library Ruby Time Format Indonesia yang intuitif.
    AkaTime is an intuitive Indonesian Time Format.
  EOF
  s.description  = <<-EOF
    AkaTime / aka_time / ArieKeren Time adalah Library Ruby Time untuk format
    Indonesia yang intuitif, independen, bisa digunakan baik dengan Ruby 
    murni maupun Rails.
    AkaTime / aka_time / ArieKeren Time is an intuitive Indonesian Time Format, 
    independent, could be used well with pure Ruby and also Rails.
  EOF
  s.files        = PKG_FILES
  s.require_path = "lib"
  s.autorequire  = "aka_time.rb"
  s.test_file    = "test/aka_time_test.rb"
  s.has_rdoc     = true
  s.extra_rdoc_files = ["AUTHORS", "CHANGES", "MIT-LICENSE", "README", "TODO"]
  s.rdoc_options += [
    '--title', 'AkaTime',
    '--main', 'README',
    '--line-numbers',
    '--inline-source'
  ]
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_zip     = true
  pkg.need_tar_gz  = true
  pkg.need_tar_bz2 = true
end
