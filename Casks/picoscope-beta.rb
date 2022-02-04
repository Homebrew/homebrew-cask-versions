cask "picoscope-beta" do
  version "7.0.91"
  sha256 "306b512fd497e03c7940115bef84a0856b099c0670777f74a7362f8b952d5d6d"

  url "https://oem.picotech.com/software/p#{version.major}beta/PicoScope_#{version}_TnM_Early_Access.pkg"
  name "PicoScope beta"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://oem.picotech.com/p#{version.major}beta/download/"
    regex(%r{href=.*?/PicoScope_(\d+(?:\.\d+)+)_TnM_Early_Access.pkg}i)
  end

  pkg "PicoScope_#{version}_TnM_Early_Access.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnmbeta"
end
