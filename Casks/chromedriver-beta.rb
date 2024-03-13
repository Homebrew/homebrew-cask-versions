cask "chromedriver-beta" do
  arch arm: "arm64", intel: "x64"

  version "123.0.6312.46"
  sha256 arm:   "fc2787314a45336728fb6b46f392c09808ed197e28ca16ba070dc4c41d539cdd",
         intel: "37f4843e244a17b01ed05a18cb3b8cb3c06ed47e33a46c7c87ff69fca1fa9efa"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "storage.googleapis.com/chrome-for-testing-public/"
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
