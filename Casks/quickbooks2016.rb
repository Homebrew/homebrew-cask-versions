cask 'quickbooks2016' do
  version '2016'
  sha256 '5ac39bf39c428263b5cd0c5a3dce7177198f5f88e6f87968a38e47ada0ae58ba'

  url "https://http-download.intuit.com/http.intuit/Downloads/#{version}/Latest/QuickBooksMac#{version}.dmg"
  name 'QuickBooks Desktop'
  homepage 'https://quickbooks.intuit.com/mac/'

  app "QuickBooks #{version}.app"
end
