cask "picoscope-beta" do
  version "7.0.107.12341"
  sha256 "04eadcec65631cc71cb3a8767a7516140ffffd64f7d0a6691462924c42ed1561"

  url "https://oem.picotech.com/software/p#{version.major}beta/PicoScope_#{version}.pkg"
  name "PicoScope beta"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://oem.picotech.com/p#{version.major}beta/download/"
    regex(%r{href=.*?/PicoScope_?(\d+(?:\.\d+)+).pkg}i)
  end

  pkg "PicoScope_#{version.major}_TnM_Early_Access_#{version}.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnmbeta"
end
