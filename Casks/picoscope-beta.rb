cask "picoscope-beta" do
  version "7.0.116.13710"
  sha256 "8d1a56b294955b0bc266cc39b3fe40e7f6ab06f32d7f10d1fc65f9a1036507dc"

  url "https://oem.picotech.com/software/p#{version.major}beta/PicoScope_#{version}_TnM.pkg"
  name "PicoScope beta"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://oem.picotech.com/p#{version.major}beta/download/"
    regex(%r{href=.*?/PicoScope[._-]v?(\d+(?:\.\d+)+)[._-]TnM\.pkg}i)
  end

  pkg "PicoScope_#{version}_TnM.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnmbeta"
end
