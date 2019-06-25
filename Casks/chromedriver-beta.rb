cask 'chromedriver-beta' do
  version '76.0.3809.25'
  sha256 '99445d3e42060f9cbd04753669df7828f48ec7546a9d32f206c1358215b9a5c9'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  conflicts_with cask: 'chromedriver'

  binary 'chromedriver'
end
