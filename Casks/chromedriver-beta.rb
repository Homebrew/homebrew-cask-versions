cask "chromedriver-beta" do
  version "101.0.4951.15"
  sha256 "8b142b9be87e263d95b26d0100da22b814262d3122b40081be3da5d55bf0bd51"

  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip",
      verified: "chromedriver.storage.googleapis.com/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://sites.google.com/chromium.org/driver/"

  livecheck do
    url :homepage
    regex(/ChromeDriver\s(\d+(?:\.\d+)+)/i)
  end

  conflicts_with cask: "chromedriver"

  binary "chromedriver"
end
