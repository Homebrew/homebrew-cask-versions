cask "picoscope-beta" do
  version "7.0.104.11953"
  sha256 "58a329e9fcb554525c64f08c993e83499072efe49737ef1fa34d2dc78135a998"

  url "https://oem.picotech.com/software/p#{version.major}beta/PicoScope_#{version.major}_TnM_Early_Access_#{version}.pkg"
  name "PicoScope beta"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://oem.picotech.com/p#{version.major}beta/download/"
    regex(%r{href=.*?/PicoScope_(?:\d+)_TnM_Early_Access[._-]v?(\d+(?:\.\d+)+).pkg}i)
  end

  pkg "PicoScope_#{version.major}_TnM_Early_Access_#{version}.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnmbeta"
end
