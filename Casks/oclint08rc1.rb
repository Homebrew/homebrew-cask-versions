class Oclint08rc1 < Cask
  url 'http://archives.oclint.org/releases/0.8rc/oclint-0.8rc1-x86_64-darwin-13.0.0.tar.gz'
  homepage 'http://oclint.org'
  version '0.8rc1'
  sha1 '872d021b88a378558bc51d3ec21feb0050d989a3'
  binary 'oclint-0.8/bin/oclint',
    'oclint-0.8/bin/oclint-json-compilation-database',
    'oclint-0.8/bin/oclint-xcodebuild'

  after_install do
    puts "Symlinking 'lib/oclint' to /usr/local/lib/oclint"
    full_path = "#{self.destination_path}/oclint-0.8"
    system "rm /usr/local/lib/oclint"
    system "ln -Fsv #{full_path}/lib/oclint /usr/local/lib/oclint"
  end

  after_uninstall do
    puts "Removing symlink /usr/local/lib/oclint"
    system "rm /usr/local/lib/oclint"
  end
end
