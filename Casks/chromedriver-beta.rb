cask "chromedriver-beta" do
  arch arm: "arm64", intel: "x64"

  version "124.0.6367.29"
  sha256 arm:   "6a5198faac2fa0467a0c23fea51b954d012f7fbf7b83d424fb6baa1e426eaf49",
         intel: "ed07a9495a215ffc747240be99b84841f1d5f6085ec21eccc30b6a665dd669e5"

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
