cask "arduino-beta" do
  version "2.0.0,6"
  sha256 "43de73fe9d3328e255261f2ab2f3bc796633403fb0c413e74ff4c44b13bc188d"

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
