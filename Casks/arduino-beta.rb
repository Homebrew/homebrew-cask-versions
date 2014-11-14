cask :v1 => 'arduino-beta' do
  version '1.5.8'
  sha256 'f5678cf9146031af52519d79dfcb16a81aa9c7eb68e516b34c679139048fb000'

  url "http://downloads.arduino.cc/arduino-#{version}-macosx-java7-r2.zip"
  homepage 'http://arduino.cc/'
  license :unknown

  app 'Arduino.app'
end
