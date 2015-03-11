cask :v1 => 'arduino-beta' do
  version '1.6.1'

  if MacOS.release <= :snow_leopard
    depends_on :java => '6'

    sha256 'c84734a1d5b76641e12484be7a1a99c006173d939c730fd04085faa02323e7af'
    url "http://arduino.cc/download.php?f=/arduino-#{version}-macosx.zip"
  else
    depends_on :java => '7'

    sha256 'c71cad988acf8923cd190d778b469b4ebbdab3f3776fa80237b25bd7af3b7ccb'
    url "http://downloads.arduino.cc/arduino-#{version}-macosx-java-latest.zip"

    caveats <<-EOS.undent
      Version #{version} for Java 7+ is experimental (see http://arduino.cc/en/Main/Software).
      If you experience problems running it please download the Java 6 version

        http://arduino.cc/download.php?f=/arduino-#{version}-macosx.zip

      and install it manually.
    EOS
  end

  homepage 'http://arduino.cc/'
  license :oss

  app 'Arduino.app'
end
