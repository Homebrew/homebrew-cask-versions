cask "picoscope-beta" do
  version "7.0.114.13320"
  sha256 "2d98c2fe3a7744391b72cb7a37be9199e643368fae7b15faa9154d6dcc4cc952"

  url "https://oem.picotech.com/software/p#{version.major}beta/PicoScope_#{version.major}_TnM_Early_Access_#{version}.pkg"
  name "PicoScope beta"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://oem.picotech.com/p#{version.major}beta/download/"
    regex(%r{href=.*?/PicoScope_(?:\d)_TnM_Early_Access[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  pkg "PicoScope_#{version.major}_TnM_Early_Access_#{version}.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnmbeta"
end
