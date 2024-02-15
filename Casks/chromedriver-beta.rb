cask "chromedriver-beta" do
  arch arm: "arm64", intel: "x64"

  version "122.0.6261.39"
  sha256 arm:   "18bb7f962f8fefb30d93120bd03e2cdbdc3e1d8adb36e133751d83ade2476937",
         intel: "93325da65b13de4dfc1e5695c61d4e5bfc16263bf1102d6ce48bc12884b4bfee"

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
