cask 'adobe-photoshop-lightroom571' do
  version '5.7.1'
  sha256 '155a91e2c90927a05ccaa244a99fed4784fa7cf26d08c634f5f111629f6b0418'

  url "http://download.adobe.com/pub/adobe/lightroom/mac/#{version.major}.x/Lightroom_#{version.major}_LS11_mac_#{version.dots_to_underscores}.dmg"
  name 'Adobe Photoshop Lightroom'
  homepage 'https://www.adobe.com/products/photoshop-lightroom.html'
  license :commercial

  pkg "Adobe Photoshop Lightroom #{version.major}.pkg"

  uninstall pkgutil: "com.adobe.Lightroom#{version.major}",
            quit:    "com.adobe.Lightroom#{version.major}",
            delete:  "/Applications/Adobe Photoshop Lightroom #{version.major}.app"

  zap       delete: [
                      '~/Library/Application Support/Adobe/Lightroom',
                      "~/Library/Preferences/com.adobe.Lightroom#{version.major}.plist",
                    ]
end
