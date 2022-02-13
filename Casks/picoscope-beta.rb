cask "picoscope-beta" do
  version "7.0.92"
  sha256 "58285b1de02d6892fd2eb765aad1727342b5dca20925018bf06470d64351b01d"

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
