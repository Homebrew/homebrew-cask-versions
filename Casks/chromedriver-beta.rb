cask "chromedriver-beta" do
  version "108.0.5359.22"
  sha256 "6dead6c0341e854e62a03700c1550cdf49567d0c888faa7f332a70d0d8f5f05b"

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
