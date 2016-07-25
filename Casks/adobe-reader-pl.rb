cask 'adobe-reader-pl' do
  version '11.0.00'
  sha256 'cfeeef917cec3175ab7673c9afd9df081794d952c5e919e29a962df21e041b37'

  url "http://ardownload.adobe.com/pub/adobe/reader/mac/#{version.major}.x/#{version}/pl_PL/AdbeRdr#{version.gsub('.', '')}_pl_PL.dmg"
  name 'Adobe Reader'
  homepage 'https://www.adobe.com/pl/products/reader.html'
  license :gratis

  pkg 'Adobe Reader XI Installer.pkg'

  uninstall pkgutil: "com.adobe.acrobat.reader.#{version.gsub('.', '')}.*",
            delete:  '/Applications/Adobe Reader.app'

  zap       delete: [
                      "~/Library/Application Support/Adobe/Acrobat/#{version.sub(%r{(\d+)\.(\d+).*}, '\1.\2')}",
                      '~/Library/Preferences/com.adobe.Reader.plist',
                      '~/Library/Caches/com.adobe.Reader',
                    ]
end
