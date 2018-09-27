cask 'quickbooks2015' do
  version '2015'
  sha256 '68fdfba3229b4b4ac6c52d4e871b80d4b7df1d0a6261bb7a90d2f4ff27ed4137'

  url "https://http-download.intuit.com/http.intuit/Downloads/#{version}/Latest/QuickBooksProMac#{version}.dmg"
  name 'QuickBooks Desktop'
  homepage 'https://quickbooks.intuit.com/mac/'

  app "QuickBooks #{version}.app"
end
