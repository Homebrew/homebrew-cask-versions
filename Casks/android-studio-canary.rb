cask :v1 => 'android-studio-canary' do
  version '1.0.0-rc4'
  sha256 'eb945124105341729b4d4a4cec07332827f0ec601484e91593825db703b64635'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-135.1626825-mac.zip"
  homepage 'http://tools.android.com/download/studio'
  license :unknown

  app 'Android Studio.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
