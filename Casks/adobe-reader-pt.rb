cask :v1 => 'adobe-reader-pt' do
  version '11.0.00'
  sha256 '432b83f2d895c42c496226214e5b700e1ee078bc03b4501500b9a783d63e4dad'

  url "http://ardownload.adobe.com/pub/adobe/reader/mac/#{version.to_i}.x/#{version}/pt_BR/AdbeRdr#{version.gsub('.', '')}_pt_BR.dmg"
  name 'Adobe Reader'
  homepage 'http://www.adobe.com/br/products/reader.html'
  license :gratis
  tags :vendor => 'Adobe'

  pkg 'Adobe Reader XI Installer.pkg'
  uninstall :pkgutil => "com.adobe.acrobat.reader.#{version.gsub('.', '')}.*",
            :delete => '/Applications/Adobe Reader.app'
  zap       :delete => [
                        "~/Library/Application Support/Adobe/Acrobat/#{version.sub(%r{(\d+)\.(\d+)\.*},'\1.\2')}",
                        '~/Library/Preferences/com.adobe.Reader.plist',
                       ]
end
