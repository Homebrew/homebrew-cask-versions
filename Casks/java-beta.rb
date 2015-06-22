cask :v1 => 'java-beta' do
  version '1.8.0_66-b22'
  sha256 'df96cb47c9ccdac4777b8e3a1da579bbab7f7572fb204bc088c2675ac9099288'

  url 'http://www.java.net/download/jdk8u66/archive/b02/binaries/jdk-8u66-ea-bin-b02-macosx-x86_64-28_jul_2015.dmg',
      :cookies => {
          'oraclelicense' => 'accept-securebackup-cookie'
      }
  name 'Java'
  name 'Java Standard Edition Development Kit'
  homepage "http://www.oracle.com/technetwork/java/javase/downloads/jdk#{version.split('.')[1]}-downloads-2133151.html"
  license :gratis

  pkg "JDK #{version.split('.')[1]} Update #{version.sub(%r{^.*?_(\d+)-.*$},'\1')}.pkg"
  postflight do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/libexec/PlistBuddy', '-c', 'Add :JavaVM:JVMCapabilities: string BundledApp', "/Library/Java/JavaVirtualMachines/jdk#{version.split('-')[0]}.jdk/Contents/Info.plist"
    system '/usr/bin/sudo', '-E', '--',
           '/usr/libexec/PlistBuddy', '-c', 'Add :JavaVM:JVMCapabilities: string JNI', "/Library/Java/JavaVirtualMachines/jdk#{version.split('-')[0]}.jdk/Contents/Info.plist"
    system '/usr/bin/sudo', '-E', '--',
           '/usr/libexec/PlistBuddy', '-c', 'Add :JavaVM:JVMCapabilities: string WebStart', "/Library/Java/JavaVirtualMachines/jdk#{version.split('-')[0]}.jdk/Contents/Info.plist"
    system '/usr/bin/sudo', '-E', '--',
           '/usr/libexec/PlistBuddy', '-c', 'Add :JavaVM:JVMCapabilities: string Applets', "/Library/Java/JavaVirtualMachines/jdk#{version.split('-')[0]}.jdk/Contents/Info.plist"
    system '/usr/bin/sudo', '-E', '--',
           '/bin/rm', '-rf', '--', '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'
    system '/usr/bin/sudo', '-E', '--',
           '/bin/ln', '-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk#{version.split('-')[0]}.jdk/Contents", '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'
    system '/usr/bin/sudo', '-E', '--',
           '/bin/ln', '-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk#{version.split('-')[0]}.jdk/Contents/Home", '/Library/Java/Home'
    system '/usr/bin/sudo', '-E', '--',
           '/bin/mkdir', '-p', '--', "/Library/Java/JavaVirtualMachines/jdk#{version.split('-')[0]}.jdk/Contents/Home/bundle/Libraries"
    system '/usr/bin/sudo', '-E', '--',
           '/bin/ln', '-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk#{version.split('-')[0]}.jdk/Contents/Home/jre/lib/server/libjvm.dylib", "/Library/Java/JavaVirtualMachines/jdk#{version.split('-')[0]}.jdk/Contents/Home/bundle/Libraries/libserver.dylib"
  end


  uninstall :pkgutil => [
      "com.oracle.jdk#{version.sub(%r{^\d+\.(\d+).*?_(\d+)-.*$}, '\1u\2')}",
      'com.oracle.jre',
  ],
            :launchctl => [
                'com.oracle.java.Helper-Tool',
                'com.oracle.java.Java-Updater',
            ],
            :quit => [
                'com.oracle.java.Java-Updater',
                'net.java.openjdk.cmd', # Java Control Panel
            ],
            :delete => [
                '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin',
                "/Library/Java/JavaVirtualMachines/jdk#{version.split('-')[0]}.jdk/Contents",
                '/Library/PreferencePanes/JavaControlPanel.prefPane',
                '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK',
                '/Library/Java/Home',
                '/usr/lib/java/libjdns_sd.jnilib',
            ]
  zap :delete => [
      '~/Library/Application Support/Oracle/Java',
      '~/Library/Caches/com.oracle.java.Java-Updater',
      '~/Library/Caches/net.java.openjdk.cmd',
  ],
      :rmdir => '~/Library/Application Support/Oracle/'

  caveats <<-EOS.undent
    This Cask makes minor modifications to the JRE to prevent issues with
    packaged applications, as discussed here:

      https://bugs.eclipse.org/bugs/show_bug.cgi?id=411361

    If your Java application still asks for JRE installation, you might need
    to reboot or logout/login.

    Installing this Cask means you have AGREED to the Oracle Binary Code
    License Agreement for Java SE at

      http://www.oracle.com/technetwork/java/javase/terms/license/index.html
  EOS
end
