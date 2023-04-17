cask "chromedriver-beta" do
  version "113.0.5672.24"
  sha256 "647f5d22b19e73a3fb5cccccd1bf2173d35ac613952308312751387a3a7e8ec1"

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
