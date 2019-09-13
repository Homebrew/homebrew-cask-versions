cask 'chromedriver-beta' do
  version '78.0.3904.11'
  sha256 '8fc187209976e5752ce3053f30be5632e6be776331f20e0ea4b7f213e833b98e'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  conflicts_with cask: 'chromedriver'

  binary 'chromedriver'
end
