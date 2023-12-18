cask "arduino-nightly" do
  version :latest
  sha256 :no_check

  url "https://downloads.arduino.cc/arduino-nightly-macosx.zip"
  name "Arduino"
  desc "Electronics prototyping platform"
  homepage "https://www.arduino.cc/"

  deprecate! date: "2023-12-17", because: :discontinued

  conflicts_with cask: "arduino"

  app "Arduino.app"

  zap trash: [
    "~/Documents/Arduino",
    "~/Library/Arduino15",
    "~/Library/Saved Application State/cc.arduino.Arduino.savedState",
  ]
end
