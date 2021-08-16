cask "picoscope-beta" do
  version "7.0.79.8989"
  sha256 "36ccd5619be88f5c99ab8fd397714057e4e369f828566ff091c675ad505a65be"

  url "https://oem.picotech.com/software/p#{version.major}beta/PicoScope_#{version}.pkg"
  name "PicoScope beta"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://oem.picotech.com/p#{version.major}beta/download/"
    strategy :page_match
    regex(%r{href=.*?/PicoScope_(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "PicoScope_#{version}.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}"
end
