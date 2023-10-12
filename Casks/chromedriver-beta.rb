cask "chromedriver-beta" do
  arch arm: "arm64", intel: "x64"

  version "119.0.6045.9"
  sha256 arm:   "19c992d86765ebfc040ed8121e7c5638e5e2a2ea4ee6c975fe8301b1e20b5547",
         intel: "75a06c04a3428bceea6353c68fcd0e42a3ee688b43963e37b5e3a2ff3d9c4f82"

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
