cask "chromedriver-beta" do
  arch arm: "arm64", intel: "x64"

  version "123.0.6312.28"
  sha256 arm:   "8bf8499b8346c2bbfae774e902304c01a254f87e979006fdd850e4b55e73da46",
         intel: "01dc14f29877d24c14b167b66011f34f37b38812ed117af0a3ab57a0fe89de8f"

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
