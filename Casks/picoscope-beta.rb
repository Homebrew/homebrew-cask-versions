cask "picoscope-beta" do
  version "7.0.81.9148"
  sha256 "f3ff61fd74344bb37509d89eb7b1d9379f882a6713fc633bbf4096ad66375235"

  url "https://oem.picotech.com/software/p#{version.major}beta/PicoScope_#{version}.pkg"
  name "PicoScope beta"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://oem.picotech.com/p#{version.major}beta/download/"
    strategy :page_match
    regex(%r{href=.*?/PicoScope_(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "PicoScope_#{version}.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}"
end
