cask :v1 => 'arduino-beta' do
  version '1.5.8'

  if MacOS.version < :lion
    depends_on :java => '6'

    sha256 'c69f870f99ccaf2abb3618845559daea9ef8c52a68ff42b5e21ae3a69cf845fa'
    url "http://arduino.cc/download.php?f=/arduino-#{version}-macosx.zip"
  else
    depends_on :java => '7'

    sha256 'f5678cf9146031af52519d79dfcb16a81aa9c7eb68e516b34c679139048fb000'
    url "http://arduino.cc/download.php?f=/arduino-#{version}-macosx-java7.zip"

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
