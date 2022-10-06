cask "picoscope-beta" do
  version "7.0.109.12622"
  sha256 "f6334d3c6da2e65220248f3dfe854832acda9aada7be54e6af4a459d69686db9"

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
