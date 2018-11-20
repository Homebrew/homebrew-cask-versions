cask 'java-beta' do
  version '12,20'
  sha256 '50c20a603364d3f0ef9378f7ac2bfd0f7ea8de376789e5ab834b57a946384fb3'

  url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}-ea+#{version.after_comma}_osx-x64_bin.tar.gz"
  name 'OpenJDK - Early Access'
  homepage 'https://jdk.java.net/'

  postflight do
    system_command '/bin/mv',
                   args: ['-f', '--', "#{staged_path}/jdk-#{version.before_comma}.jdk",
                          "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"],
                   sudo: true

    system_command '/bin/mkdir',
                   args: ['-p', '--', "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk/Contents/Home/bundle/Libraries"],
                   sudo: true

    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk/Contents/Home/lib/server/libjvm.dylib",
                          "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk/Contents/Home/bundle/Libraries/libserver.dylib"],
                   sudo: true
  end

  uninstall delete: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"
end
