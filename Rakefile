require_relative '_common.rb'

def in_tempdir
  dirname = "./tmp/#{SecureRandom.hex}"
  FileUtils.mkdir_p(dirname)
  Dir.chdir(dirname) do
    yield
  end
end

def info(name)
  puts "Running test #{name}".blue
end

def in_temprepo
  in_tempdir do
    psystem 'git init'
    psystem 'git config user.name "test"'
    psystem 'git config user.email "test@example.com"'
    yield
  end
end

def create_file(name)
  psystem "echo #{name} > #{name}"
end

task :test_nuke do
  info 'test_nuke'
  in_temprepo do
    create_file 'a'
    psystem 'git add .'
    psystem 'git commit -m"a"'
    create_file 'b'
    psystem 'git add .'
    psystem 'git commit -m"b"'
    psystem 'git commit --allow-empty -m"empty"'
    psystem "git replace --graft HEAD HEAD^ HEAD^^"
    psystem 'git commit --allow-empty -m"empty2"'
    psystem "git replace --graft HEAD HEAD^ HEAD^^^"
    psystem 'git log'
    psystem 'ls'
  end
end

task test: [:test_nuke] do
end