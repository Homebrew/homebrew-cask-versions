cask "arduino-beta-nightly" do
  version :latest
  sha256 :no_check

  url "https://downloads.arduino.cc/arduino-ide/nightly/arduino-ide_nightly-latest_macOS_64bit.dmg"
  name "Arduino Beta Nightly"
  desc "Open-source electronics prototyping platform"
  homepage "https://www.arduino.cc/"

  app "Arduino IDE.app"
end
