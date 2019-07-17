cask 'chromedriver-beta' do
  version '76.0.3809.68'
  sha256 '093ce5480be24520c1b5c0d265cc20a3b28527877d0bb02fe24ab5ac503d1239'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  conflicts_with cask: 'chromedriver'

  binary 'chromedriver'
end
