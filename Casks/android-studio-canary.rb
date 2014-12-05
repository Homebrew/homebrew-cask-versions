cask :v1 => 'android-studio-canary' do
  version '1.0.0-rc1'
  sha256 'c6d818a93dbc865885158c7006811774c6b452df31dbdfee0bd63232f42f4d9d'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-135.1598475-mac.zip"
  homepage 'http://tools.android.com/download/studio'
  license :unknown

  app 'Android Studio.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
