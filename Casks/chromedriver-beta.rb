cask "chromedriver-beta" do
  version "99.0.4844.17"
  sha256 "5c3f3f755777d4002f502bfe27489ac1ce4725ac0e9c06c507dc6a806223dce0"

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
