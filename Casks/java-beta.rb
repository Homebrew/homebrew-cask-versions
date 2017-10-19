cask 'java-beta' do
  version '10,27'
  sha256 '2c1767d12e0e92185eb901a7ce0ceeed3e114a86daa1bcb70ac524b2f9e0b2f1'

  url "http://download.java.net/java/jdk#{version.before_comma}/archive/#{version.after_comma}/binaries/jdk-#{version.before_comma}-ea+#{version.after_comma}_osx-x64_bin.dmg",
      cookies: { 'oraclelicense' => 'accept-securebackup-cookie' }
  name 'Java Standard Edition Development Kit'
  homepage "http://jdk.java.net/#{version.before_comma}/"

  pkg "JDK #{version.before_comma}.pkg"

  postflight do
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string BundledApp', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string JNI', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string WebStart', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string Applets', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true
    system_command '/bin/mkdir',
                   args: ['-p', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/bundle/Libraries"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/lib/server/libjvm.dylib", "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/bundle/Libraries/libserver.dylib"],
                   sudo: true
  end

  uninstall pkgutil: "com.oracle.jdk-#{version.before_comma}",
            delete:  "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents"

  zap delete: [
                '~/Library/Caches/com.oracle.java.Java-Updater',
                '~/Library/Caches/net.java.openjdk.cmd',
              ],
      trash:  '~/Library/Application Support/Oracle/Java',
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
