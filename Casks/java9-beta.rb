cask 'java9-beta' do
  version '1.9,127'
  sha256 '42251e577a1ff96b669a2f5f553d8a955a8cbf34d618b7361b18e913482079a8'

  url "http://www.java.net/download/java/jdk#{version.before_comma.minor}/archive/#{version.after_comma}/binaries/jdk-#{version.before_comma.minor}-ea+#{version.after_comma}_osx-x64_bin.dmg",
      cookies: { 'oraclelicense' => 'accept-securebackup-cookie' }
  name 'Java Standard Edition Development Kit'
  homepage 'https://jdk9.java.net/download/'
  license :gratis

  pkg 'JDK 9.pkg'

  postflight do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/libexec/PlistBuddy', '-c', 'Add :JavaVM:JVMCapabilities: string BundledApp', "/Library/Java/JavaVirtualMachines/jdk-#{version.minor}.jdk/Contents/Info.plist"
    system '/usr/bin/sudo', '-E', '--',
           '/usr/libexec/PlistBuddy', '-c', 'Add :JavaVM:JVMCapabilities: string JNI',        "/Library/Java/JavaVirtualMachines/jdk-#{version.minor}.jdk/Contents/Info.plist"
    system '/usr/bin/sudo', '-E', '--',
           '/usr/libexec/PlistBuddy', '-c', 'Add :JavaVM:JVMCapabilities: string WebStart',   "/Library/Java/JavaVirtualMachines/jdk-#{version.minor}.jdk/Contents/Info.plist"
    system '/usr/bin/sudo', '-E', '--',
           '/usr/libexec/PlistBuddy', '-c', 'Add :JavaVM:JVMCapabilities: string Applets',    "/Library/Java/JavaVirtualMachines/jdk-#{version.minor}.jdk/Contents/Info.plist"
    system '/usr/bin/sudo', '-E', '--',
           '/bin/mkdir', '-p', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.minor}.jdk/Contents/Home/bundle/Libraries"
    system '/usr/bin/sudo', '-E', '--',
           '/bin/ln', '-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.minor}.jdk/Contents/Home/jre/lib/server/libjvm.dylib", "/Library/Java/JavaVirtualMachines/jdk-#{version.minor}.jdk/Contents/Home/bundle/Libraries/libserver.dylib"
    if MacOS.release <= :mavericks
      system '/usr/bin/sudo', '-E', '--',
             '/bin/rm', '-rf', '--', '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'
      system '/usr/bin/sudo', '-E', '--',
             '/bin/ln', '-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.minor}.jdk/Contents", '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'
    end
  end

  uninstall pkgutil: 'com.oracle.jdk9',
            delete:  [
                       MacOS.release <= :mavericks ? '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK' : '',
                     ].keep_if { |v| !v.empty? }

  zap       delete: [
                      '~/Library/Application Support/Oracle/Java',
                      '~/Library/Caches/com.oracle.java.Java-Updater',
                      '~/Library/Caches/net.java.openjdk.cmd',
                    ],
            rmdir:  '~/Library/Application Support/Oracle/'

  caveats <<-EOS.undent
    This Cask makes minor modifications to the JRE to prevent any packaged
    application issues.

    If your Java application still asks for JRE installation, you might need to
    reboot or logout/login.

    The JRE packaging bug is discussed here:

        https://bugs.eclipse.org/bugs/show_bug.cgi?id=411361

    Installing this Cask means you have AGREED to the Oracle Binary Code License
    Agreement for Java SE at

        http://www.oracle.com/technetwork/java/javase/terms/license/index.html

    EOS
end
