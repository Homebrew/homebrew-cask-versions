cask "chromedriver-beta" do
  arch arm: "arm64", intel: "x64"

  version "119.0.6045.21"
  sha256 arm:   "b2884bbc9478fd2f45026b23e20d55a33f2a5345a6f883c4baedbdf5926956b9",
         intel: "7fa5c26c3f7db9416a17484d590b152afb9798c4b78d684ea1db2083748c153d"

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
