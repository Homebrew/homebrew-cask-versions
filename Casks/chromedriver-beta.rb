cask "chromedriver-beta" do
  arch arm: "arm64", intel: "x64"

  version "124.0.6367.8"
  sha256 arm:   "ebc01870cd92a858588ef4c38c5018ab806736d77aca48a9b7e27735cafec326",
         intel: "078ce736f65a541a7ea35ddc403a3cdee1d514b8a669f7a5b54d8ddcd5212853"

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
