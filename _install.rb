def cmd(cmd)
  puts cmd
  unless system cmd
    raise "error"
  end
end

Dir.glob('./*').each do |file|
  file = File.basename(file)
  next unless file.start_with?('git-')
  cmd("rm /usr/local/bin/#{file}; true")
  cmd("ln -s #{Dir.pwd}/#{file} /usr/local/bin/#{file}")
end
