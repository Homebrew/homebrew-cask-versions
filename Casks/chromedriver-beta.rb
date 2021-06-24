cask "chromedriver-beta" do
  version "92.0.4515.43"
  sha256 "0ec54504c043013fe8a0617d0c6b8cc012f287cc455412b560e4d4f249264fb2"

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
