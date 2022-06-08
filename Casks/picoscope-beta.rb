cask "picoscope-beta" do
  version "7.0.101.11513"
  sha256 "8886eb9c8d94d0ef143c6607135d51fc6d9f2ff9311394baff7dcf4d35f27a8a"

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
