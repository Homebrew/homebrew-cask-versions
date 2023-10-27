cask "chromedriver-beta" do
  arch arm: "arm64", intel: "x64"

  version "119.0.6045.59"
  sha256 arm:   "6058b24925526eaaa1fed7f8cd83003579a157f73f8df7778d1ce0b7d183534c",
         intel: "dc0997d0ac40c3e06d8dbbf776954499f6e41d31a021612a1cc848d2be7d6006"

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
