cask "chromedriver-beta" do
  arch arm: "arm64", intel: "x64"

  version "117.0.5938.48"
  sha256 arm:   "bc9fa6fce3e0a8f65d6c3eb7fb389bd49c9c0d622a0b0687b8ab85d6cf34492e",
         intel: "520afd01cef5c257e7d3e503c71925ea62dd79c9447c0211e6e70e0d9db5eeb7"

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
