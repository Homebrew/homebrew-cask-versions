cask "qlc-plus-beta" do
  version "5.0.0_beta3"
  sha256 "eb10d1c4a666df264bc6f7c1eed955f107fef7c42eed15933a87725fc4408b0d"

  url "https://www.qlcplus.org/downloads/#{version}/QLC+_#{version}.dmg"
  name "Q Light Controller+"
  desc "Control DMX or analog lighting systems"
  homepage "https://www.qlcplus.org/"

  livecheck do
    url "https://www.qlcplus.org/download"
    regex(/href=.*?QLC\+[._-]v?(\d+(?:\.\d+)+_beta\d+)\.dmg/i)
  end

  conflicts_with cask: "qlc-plus"

  app "QLC+.app"

  zap trash: "~/Library/Application Support/QLC+"
end
