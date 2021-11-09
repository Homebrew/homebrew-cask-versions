cask "chromedriver-beta" do
  version "96.0.4664.35"
  sha256 "7e03dbb3b8460e67e32636a6557f3a19110f589997b2849af85852fbd63f2cdf"

  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip",
      verified: "chromedriver.storage.googleapis.com/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://sites.google.com/chromium.org/driver/"

  livecheck do
    url :homepage
    regex(/Latest\s*beta\s*release:.*?ChromeDriver\s*v?(\d+(?:\.\d+)+)/i)
  end

  conflicts_with cask: "chromedriver"

  binary "chromedriver"
end
