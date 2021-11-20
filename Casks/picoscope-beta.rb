cask "picoscope-beta" do
  version "7.0.85.9526"
  sha256 "b43c50316c551ca250e9f717d29bc3aae0d6efc42f2274e0eccf3254ddf33e8b"

  url "https://oem.picotech.com/software/p#{version.major}beta/PicoScope_#{version.major}_TM_Early_Access_#{version}.pkg"
  name "PicoScope beta"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://oem.picotech.com/p#{version.major}beta/download/"
    strategy :page_match
    regex(%r{href=.*?/PicoScope_#{version.major}_TM_Early_Access_(\d+(?:\.\d+)+)\.pkg}i)
  end

  pkg "PicoScope_#{version.major}_TM_Early_Access_#{version}.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}"
end
