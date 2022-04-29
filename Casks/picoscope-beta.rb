cask "picoscope-beta" do
  version "7.0.97.11109"
  sha256 "95f5512a306d213a9fdffb7fb03798b7f3a502ae29aac3405afc1ca80f310997"

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
