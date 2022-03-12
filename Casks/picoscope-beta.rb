cask "picoscope-beta" do
  version "7.0.94"
  sha256 "d39f4953ff171819fd87220292050692fa186b7ffa99fd8db187a3a7aa218f2a"

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
