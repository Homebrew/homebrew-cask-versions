cask "arduino-nightly" do
  version :latest
  sha256 :no_check

  url "https://downloads.arduino.cc/arduino-nightly-macosx.zip"
  name "Arduino"
  desc "Electronics prototyping platform"
  homepage "https://www.arduino.cc/"

  conflicts_with cask: "arduino"

  app "Arduino.app"

  caveats do
    discontinued
  end
end
