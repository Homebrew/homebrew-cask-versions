cask :v1 => 'arduino-nightly' do
  version :latest
  sha256 :no_check

  url 'http://downloads.arduino.cc/arduino-nightly-macosx.zip'
  name 'Arduino'
  homepage 'https://www.arduino.cc/'
  license :oss

  app 'Arduino.app'
end
