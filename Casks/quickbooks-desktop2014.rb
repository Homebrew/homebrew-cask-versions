cask 'quickbooks-desktop2014' do
  version '2014'
  sha256 '1bf5daa4ca99a6e55cc065fa3e3109bfc5f51e793645e7d40a65eaaf4ac43176'

  url "https://http-download.intuit.com/http.intuit/Downloads/#{version}/Latest/QuickBooksProMac#{version}.dmg"
  name 'QuickBooks Desktop'
  homepage 'https://quickbooks.intuit.com/mac/'

  app "QuickBooks #{version}.app"
end
