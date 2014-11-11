class SizeupX11 < Cask
  version :latest
  sha256 :no_check

  url 'http://www.irradiatedsoftware.com/downloads/SizeUpX11.zip'
  appcast 'http://www.irradiatedsoftware.com/updates/profiles/sizeup.php'
  homepage 'http://www.irradiatedsoftware.com/sizeup/index.html'
  license :unknown

  app 'SizeUp.app'
  zap :delete => [
                  '~/Library/Preferences/com.irradiatedsoftware.SizeUp.plist',
                  '~/Library/Application Support/SizeUp',
                 ]
end
