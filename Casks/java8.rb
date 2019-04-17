cask 'java8' do
  version '8u212,b10:59066701cf1a433da9770636fbc4c9aa'
  sha256 '7a81ada148268a1d90ff150a265167f9d42cfa1632f41e75ce7ef68b022acbfd'

  url "https://download.oracle.com/otn/java/jdk/#{version.before_comma}-#{version.after_comma.before_colon}/#{version.after_colon}/jdk-#{version.before_comma}-macosx-x64.dmg",
      cookies: {
                 'oraclelicense' => 'accept-securebackup-cookie',
               }
  name 'Oracle Java 8 Standard Edition Development Kit'
  homepage 'https://www.oracle.com/technetwork/java/javase/overview/index.html'

  depends_on macos: '>= :yosemite'

  pkg 'JDK 8 Update 202.pkg'

  uninstall pkgutil: "com.oracle.jdk#{version.before_comma}",
            delete:  [
                       '/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin',
                       '/Library/PreferencePanes/JavaControlPanel.prefPane',
                     ]

  zap trash: [
               '~/Library/Application Support/Oracle/Java',
               '~/Library/Application Support/com.oracle.java.JavaAppletPlugin.plist',
               '~/Library/Application Support/com.oracle.javadeployment.plist',
             ]

  caveats do
    license 'https://www.oracle.com/technetwork/java/javase/terms/license/javase-license.html'
  end
end
