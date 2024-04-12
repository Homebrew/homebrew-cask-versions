cask "chromedriver-beta" do
  arch arm: "arm64", intel: "x64"

  version "124.0.6367.49"
  sha256 arm:   "0575884937eec310fb708d60faef54ea1e323b4008415e5e4a25c7f0508ef636",
         intel: "a09812089bc82cd0b1f7afe3bc0bae7875dfbc3b5b4c8a1ce2908e9dc89bcbe7"

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
