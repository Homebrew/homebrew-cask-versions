cask "picoscope-beta" do
  version "7.0.87"
  sha256 "71adec208b6cfa614f4485cf0df4f0c3f185c6016157e6334e5b1ea835d9a67e"

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
