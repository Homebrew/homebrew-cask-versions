cask :v1 => 'android-studio-canary' do
  version '1.3.0.0'
  sha256 '2b87c2f7b690869285def936721ab0d37a6767873ae94cf4805f888dd240fd26'

  url "http://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.1962279-mac.zip"
  homepage 'http://tools.android.com/download/studio'
  license :apache

  app 'Android Studio.app'

  caveats <<-EOS.undent
    If you have Java 7 or above installed, you may want to use it as Android Studio JDK, for example:

    export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk

    Please take a look at this post: http://tools.android.com/recent/androidstudio1rc3_releasecandidate3released
  EOS
end
