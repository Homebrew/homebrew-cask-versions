cask "chromedriver-beta" do
  arch arm: "arm64", intel: "x64"

  version "118.0.5993.18"
  sha256 arm:   "60ba28bca643c45043c859cf21511296ce3488b09fb83c0f9018c88e3e25c7cc",
         intel: "0608f81c56ea39d85c1a2a98571b1cdbe9f12688b44a073ba9cc2fa0de78ffcd"

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
