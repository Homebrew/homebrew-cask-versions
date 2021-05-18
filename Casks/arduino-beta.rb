cask "arduino-beta" do
  version "2.0.0,7"
  sha256 "7f53889f4efbb4eda9aaa1fc5fcd7f55929dd6fb813e7d1d8924343fee0d6842"

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
