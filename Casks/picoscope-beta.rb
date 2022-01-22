cask "picoscope-beta" do
  version "7.0.90"
  sha256 "84f335f0b4ef3f372fd294a01df1ca89875197ebe9cd159800be0eb8544c666b"

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
