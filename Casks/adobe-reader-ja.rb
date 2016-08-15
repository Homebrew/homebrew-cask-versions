cask 'adobe-reader-ja' do
  version '11.0.00'
  sha256 '69f71085799700ecd7e7f59e14095eafc5889e8962ed3a2e84e0a40d3a04d570'

  url "http://ardownload.adobe.com/pub/adobe/reader/mac/#{version.major}.x/#{version}/ja_JP/AdbeRdr#{version.no_dots}_ja_JP.dmg"
  name 'Adobe Reader'
  homepage 'https://www.adobe.com/jp/products/reader.html'
  license :closed

  pkg 'Adobe Reader XI Installer.pkg'

  uninstall pkgutil: "com.adobe.acrobat.reader.#{version.major}.*",
            delete:  '/Applications/Adobe Reader.app'
end
