cask "chromedriver-beta" do
  version "112.0.5615.28"
  sha256 "8e983d374af3e9795d4053593369f0b2192815183c8c23053bce0226e3818857"

  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip",
      verified: "chromedriver.storage.googleapis.com/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://sites.google.com/chromium.org/driver/"

  livecheck do
    url :homepage
    regex(/beta.*?ChromeDriver\s(\d+(?:\.\d+)+)</i)
  end

  conflicts_with cask: "chromedriver"

  binary "chromedriver"
end
