class AdobePhotoshopCs < Cask
  url 'http://trials2.adobe.com/AdobeProducts/PHSP/13/osx10/Photoshop_13_LS16.dmg',
      :cookies => {
                    'MM_TRIALS' => '1234'
                  }
  homepage 'https://www.adobe.com/products/cs6.html'
  version '13.0.0'
  sha256 'f377a661660a5b00c46ef71dd5a835989d1374ed97bb891e9bdf98fa3a686a5e'
  caveats do
    manual_installer 'Adobe Photoshop CS6/Install.app'
  end
end
