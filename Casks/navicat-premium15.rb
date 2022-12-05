cask "navicat-premium15" do
  version "15.0.36"
  sha256 :no_check

  url "https://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name "Navicat Premium 15"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-premium"

  livecheck do
    url "https://www.navicat.com/en/products/navicat-premium-release-note#M"
    regex(/Navicat\sPremium\s\(macOS\)\sversion\s(15\.\d+(?:\.\d+)+)/i)
  end

  conflicts_with cask: "navicat-premium"
  depends_on macos: ">= :mojave"

  app "Navicat Premium.app"
end
