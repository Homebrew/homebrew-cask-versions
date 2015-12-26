cask 'arduino-nightly' do
  version :latest
  sha256 :no_check

  url 'https://downloads.arduino.cc/arduino-nightly-macosx.zip'
  name 'Arduino'
  homepage 'https://www.arduino.cc/'
  license :oss

  app 'Arduino.app'
end
