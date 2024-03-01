cask "chromedriver-beta" do
  arch arm: "arm64", intel: "x64"

  version "123.0.6312.22"
  sha256 arm:   "b5851f58e12068329c959a2fa3a7e3ec51ee909f2cd3b5b4e28772a2f5a03143",
         intel: "7c7ab7c52eeea8e2526e2ddfe356f89cafd6ee4242561ae11de9cbb9736b5374"

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
