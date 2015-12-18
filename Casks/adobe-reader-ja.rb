cask 'adobe-reader-ja' do
  version '11.0.00'
  sha256 '69f71085799700ecd7e7f59e14095eafc5889e8962ed3a2e84e0a40d3a04d570'
  major_version = version.split('.')[0]

  url "http://ardownload.adobe.com/pub/adobe/reader/mac/#{major_version}.x/#{version}/ja_JP/AdbeRdr#{version.gsub('.', '')}_ja_JP.dmg"
  homepage 'http://www.adobe.com/jp/products/reader.html'
  license :closed

  pkg 'Adobe Reader XI Installer.pkg'
  uninstall :pkgutil => "com.adobe.acrobat.reader.#{major_version}.*",
            :delete  => '/Applications/Adobe Reader.app'
end
