cask 'zulu7' do
  version '7.0_131,7.17.0.5'
  sha256 'b2bc63bdd24432820982101e82568071c8cedfed62da2ae5c69bfe378800b643'

  url "http://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma.underscores_to_dots}-macosx_x64.dmg",
      referer: 'http://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java Standard Edition Development Kit'
  homepage 'http://www.azul.com/downloads/zulu/zulu-mac/'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  postflight do
    system_command '/bin/mv',
                   args: ['-f', '--', "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk", "/Library/Java/JavaVirtualMachines/zulu-#{version.before_comma}.jdk"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/zulu-#{version.before_comma}.jdk", "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk"],
                   sudo: true

    if MacOS.version <= :mavericks
      system_command '/bin/rm',
                     args: ['-rf', '--', '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'],
                     sudo: true
      system_command '/bin/ln',
                     args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk/Contents", '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'],
                     sudo: true
    end
  end

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
            delete:  [
                       "/Library/Java/JavaVirtualMachines/zulu-#{version.before_comma}.jdk",
                       "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk",
                       MacOS.version <= :mavericks ? '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK' : '',
                     ].keep_if { |v| !v.empty? }

  caveats <<-EOS.undent
    If this cask is upgraded, previous stale versions will be left under
    'Caskroom/zulu7/{version}'. Stale versions may also be left under
    '/Library/Java/JavaVirtualMachines/zulu-{version}.jdk'. Removing them may
    require manual deletion, e.g.

      rm -rf /opt/homebrew-cask/Caskroom/zulu7/
      rm -rf /Library/Java/JavaVirtualMachines/zulu-7*.jdk
  EOS
end
