cask :v1 => 'android-studio-canary' do
  version '1.3.0.2'
  sha256 '9c8eece980d4b785bdaf1254376e98397f866dc6f4937c0d14823bfb19b760d5'

  url "http://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.1989493-mac.zip"
  homepage 'http://tools.android.com/download/studio'
  license :apache

  app 'Android Studio.app'

  caveats <<-EOS.undent
    If you have Java 7 or above installed, you may want to use it as Android Studio JDK, for example:

    export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk

    Please take a look at this post: http://tools.android.com/recent/androidstudio1rc3_releasecandidate3released
  EOS
end
