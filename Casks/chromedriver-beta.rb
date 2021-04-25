cask "chromedriver-beta" do
  version "91.0.4472.19"
  sha256 "c23d8244cff767fc1c9bc259fb86fece0124d1eba9645397fe7903100e98651f"

  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip",
      verified: "chromedriver.storage.googleapis.com/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://sites.google.com/chromium.org/driver/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Latest\s*beta\s*release:.*?ChromeDriver\s*(\d+(?:\.\d+)*)/i)
  end

  conflicts_with cask: "chromedriver"

  binary "chromedriver"
end
