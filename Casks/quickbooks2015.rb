cask 'quickbooks2015' do
  version '2015'
  sha256 '95588ba17927ae336ede00847dd94e855ce56882d958e3e51fab15f055473f89'

  url "https://http-download.intuit.com/http.intuit/Downloads/#{version}/Latest/QuickBooksProMac#{version}.dmg"
  name 'QuickBooks Desktop'
  homepage 'https://quickbooks.intuit.com/mac/'

  app "QuickBooks #{version}.app"
end
