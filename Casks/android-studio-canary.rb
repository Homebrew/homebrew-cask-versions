cask :v1 => 'android-studio-canary' do
  version '1.0.0-rc4'
  sha256 'eb945124105341729b4d4a4cec07332827f0ec601484e91593825db703b64635'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-135.1626825-mac.zip"
  homepage 'http://tools.android.com/download/studio'
  license :apache

  app 'Android Studio.app'

  caveats <<-EOS.undent
    If you have Java 7 or above installed, you may want to use it as Android Studio JDK, for example:

    export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk

    Please take a look at this post: http://tools.android.com/recent/androidstudio1rc3_releasecandidate3released
  EOS
end
