cask "picoscope-beta" do
  version "7.0.75.8573"
  sha256 "aaf35bba0b8522f84984f362110b02caf6b52b9c534c779339d5d95e04c32c30"

  url "https://oem.picotech.com/software/p7beta/PicoScope_#{version}.pkg"
  name "PicoScope beta"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://www.picotech.com/downloads/_lightbox/"
    strategy :page_match
    regex(%r{href=.*?/PicoScope-(\d+(?:.\d+)*)\.pkg}i)
  end

  pkg "PicoScope_#{version}.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}"
end
