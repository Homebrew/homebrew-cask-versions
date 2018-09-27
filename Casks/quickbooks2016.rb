cask 'quickbooks2016' do
  version '2016'
  sha256 'e0cd259ea71c5c1af9de3e1e6434c32f7182f18bc29688afa428706ff4966f91'

  url "https://http-download.intuit.com/http.intuit/Downloads/#{version}/Latest/QuickBooksMac#{version}.dmg"
  name 'QuickBooks Desktop'
  homepage 'https://quickbooks.intuit.com/mac/'

  app "QuickBooks #{version}.app"
end
