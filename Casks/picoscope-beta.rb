cask "picoscope-beta" do
  version "7.0.103.11796"
  sha256 "d91232c654b220ea7dcb9b536a9e1b6608e08c7b6c53f9433f454e37a6b76361"

  url "https://oem.picotech.com/software/p#{version.major}beta/PicoScope_#{version.major}_TnM_Early_Access_#{version}.pkg"
  name "PicoScope beta"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://oem.picotech.com/p#{version.major}beta/download/"
    regex(%r{href=.*?/PicoScope_(?:\d+)_TnM_Early_Access[._-]v?(\d+(?:\.\d+)+).pkg}i)
  end

  pkg "PicoScope_#{version.major}_TnM_Early_Access_#{version}.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnmbeta"
end
