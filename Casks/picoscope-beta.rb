cask "picoscope-beta" do
  version "7.0.88"
  sha256 "c4e8cc6f94443957f3eb2057ea1626f34e87d46f893091bad74b0abc5d23bb6b"

  url "https://oem.picotech.com/software/p#{version.major}beta/PicoScope_#{version.major}_TnM_Early_Access_#{version}.pkg"
  name "PicoScope beta"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://oem.picotech.com/p#{version.major}beta/download/"
    strategy :page_match
    regex(%r{href=.*?/PicoScope_#{version.major}_TnM_Early_Access_(\d+(?:\.\d+)+)\.pkg}i)
  end

  pkg "PicoScope_#{version.major}_TnM_Early_Access_#{version}.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}"
end
