cask "navicat-premium15" do
  version "15.0.35"
  sha256 "892b55aaa17d8d9fc34cdf26206147956686e0cfcd9ff0f6dd1cfe7a5e615bc9"

  language "en", default: true do
    url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
    homepage "https://www.navicat.com/en/company/aboutus/blog/1300-navicat-premium-15-the-most-powerful-yet-2"
  end

  name "Navicat Premium v15"
  desc "Database administration and development tool, version 15"

  livecheck do
    url "https://www.navicat.com/en/products/navicat-premium-release-note#M"
    regex(/Navicat\sPremium\s\(macOS\)\sversion\s(15\.\d+(?:\.\d+)+)/i)
  end

  app "Navicat Premium.app", target: "Navicat Premium 15.app"
end
