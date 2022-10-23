cask "picoscope-beta" do
  version "7.0.111.12850"
  sha256 "16e063361b0afa67c1ec800e1af23881b69559b66c31cfdc704fb1aa827c9788"

  url "https://oem.picotech.com/software/p#{version.major}beta/PicoScope_#{version}.pkg"
  name "PicoScope beta"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://oem.picotech.com/p#{version.major}beta/download/"
    regex(%r{href=.*?/PicoScope_?(\d+(?:\.\d+)+).pkg}i)
  end

  pkg "PicoScope_#{version}.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnmbeta"
end
