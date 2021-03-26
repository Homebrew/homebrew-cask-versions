cask "arduino-beta" do
  version "2.0.0-beta.4"
  sha256 "d535e3deb08b0a5f3fa5762c86702f0f9cc12dc05898f8db72a9aa3f9c1f048e"

  url "https://downloads.arduino.cc/arduino-ide/arduino-ide_#{version}_macOS_64bit.dmg"
  name "Arduino IDE 2.0 Beta"
  desc "Open-source electronics prototyping platform"
  homepage "https://www.arduino.cc/"

  app "Arduino IDE.app"
end
