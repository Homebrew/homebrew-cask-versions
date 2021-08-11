cask "picoscope-beta" do
  version "7.0.78.8921"
  sha256 "a2655a474132818cd1fb8a136278d7ba2fd1d0670e4bf5a00b1f57f4e1de2245"

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
