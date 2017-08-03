require 'colorize'
require 'fileutils'
require 'securerandom'

def psystem cmd
  puts "> #{cmd}".yellow
  unless system cmd
    raise "error during #{cmd}"
  end
end
