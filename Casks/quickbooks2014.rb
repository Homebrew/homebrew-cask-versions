cask 'quickbooks2014' do
  version '2014'
  sha256 'fb195fe528c6290e565082109e6031149eb3173426928c7adaa064c3920cac1f'

  url "https://http-download.intuit.com/http.intuit/Downloads/#{version}/Latest/QuickBooksProMac#{version}.dmg"
  name 'QuickBooks Desktop'
  homepage 'https://quickbooks.intuit.com/mac/'

  app "QuickBooks #{version}.app"
end
