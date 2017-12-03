cask 'zulu7' do
  version '1.7.0_161,7.21.0.3'
  sha256 '642e5ca2b884359621ef00c4997598734cb94a823145f2333744f62046bbd97b'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.minor}.#{version.patch}.#{version.before_comma.sub(%r{.*_}, '')}-macosx_x64.dmg",
      referer: 'http://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java Standard Edition Development Kit'
  homepage 'https://www.azul.com/products/zulu-and-zulu-enterprise/'

  pkg "Double-Click to Install Zulu #{version.minor}.pkg"

  postflight do
    system_command '/bin/mv',
                   args: ['-f', '--', "/Library/Java/JavaVirtualMachines/zulu-#{version.minor}.jdk", "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk", "/Library/Java/JavaVirtualMachines/zulu-#{version.minor}.jdk"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk/Contents/Home", '/Library/Java/Home'],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string JNI', "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true
  end

  uninstall pkgutil: "com.azulsystems.zulu.#{version.minor}",
            delete:  [
                       "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk",
                       "/Library/Java/JavaVirtualMachines/zulu-#{version.minor}.jdk",
                       '/Library/Java/Home',
                     ]
end
