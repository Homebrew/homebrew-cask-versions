cask "arduino-beta" do
  version "2.0.0,5"
  sha256 "02cb969de9284c9ee95249db60c75017c1f89c0daf2d56e81612c0205cb2f064"

  url "https://downloads.arduino.cc/arduino-ide/arduino-ide_#{version.before_comma}-beta.#{version.after_comma}_macOS_64bit.dmg"
  name "Arduino Beta"
  desc "Open-source electronics prototyping platform"
  homepage "https://www.arduino.cc/"

  livecheck do
    url "https://www.arduino.cc/en/software/"
    strategy :page_match do |page|
      match = page.match(/href=.*?arduino[._-]ide[._-]v?(\d+(?:\.\d+)+)[._-]beta\.(\d+)[._-]macos[._-]64bit\.dmg/i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Arduino IDE.app"
end
