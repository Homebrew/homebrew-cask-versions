cask 'zulu7' do
  version '1.7.0_95,7.13.0.1'
  sha256 '3744b75e621876934c3dc256491d5a3e58b73cd96e2b809c77a333f7e34debbe'

  url "http://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version[2..7].underscores_to_dots}-macosx_x64.dmg",
      referer: 'http://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java Standard Edition Development Kit'
  homepage 'http://www.azul.com/downloads/zulu/zulu-mac/'
  license :gratis

  pkg "Double-Click to Install Zulu #{version.minor}.pkg"

  postflight do
    system '/usr/bin/sudo', '-E', '--',
           '/bin/mv', '-f', '--', "/Library/Java/JavaVirtualMachines/zulu-#{version.minor}.jdk", "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk"
    system '/usr/bin/sudo', '-E', '--',
           '/bin/ln', '-nsf', '--', "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk", "/Library/Java/JavaVirtualMachines/zulu-#{version.minor}.jdk"
    if MacOS.release <= :mavericks
      system '/usr/bin/sudo', '-E', '--',
             '/bin/rm', '-rf', '--', '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'
      system '/usr/bin/sudo', '-E', '--',
             '/bin/ln', '-nsf', '--', "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk/Contents", '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'
    end
  end

  uninstall pkgutil: "com.azulsystems.zulu.#{version.minor}",
            delete:  [
                       "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk",
                       "/Library/Java/JavaVirtualMachines/zulu-#{version.minor}.jdk",
                       MacOS.release <= :mavericks ? '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK' : '',
                     ].keep_if { |v| !v.empty? }
end
