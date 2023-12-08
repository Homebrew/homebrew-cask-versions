cask "chromedriver-beta" do
  arch arm: "arm64", intel: "x64"

  version "121.0.6167.8"
  sha256 arm:   "f0634a4353100350c179f0db7f8050952cdd28e191364c95296b2faa653b871d",
         intel: "11d83b7ca928fe965d980cb7baec40191ee45fcfd7d7dc2ebbd19486d60acfb0"

  url "https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://chromedriver.chromium.org/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions-with-downloads.json"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json["channels"]["Beta"]["version"]&.scan(regex) { |match| match[0] }
    end
  end

  conflicts_with cask: "chromedriver"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
