cask 'zulu9' do
  version '9.0.7.1'
  sha256 'ddc362256ce2a06a37993cbe1ae2c166191444c23875d10c38bef910d5b5e6ac'

  url "https://cdn.azul.com/zulu/bin/zulu#{version}-jdk#{version.major_minor_patch}-macosx_x64.dmg",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java Standard Edition Development Kit'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  postflight do
    system_command '/bin/mv',
                   args: ['-f', '--', "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk", "/Library/Java/JavaVirtualMachines/zulu-#{version}.jdk"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/zulu-#{version}.jdk", "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk/Contents/Home", '/Library/Java/Home'],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string JNI', "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk/Contents/Info.plist"],
                   sudo: true
  end

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
            delete:  [
                       "/Library/Java/JavaVirtualMachines/zulu-#{version}.jdk",
                       "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk",
                       '/Library/Java/Home',
                     ]
end
