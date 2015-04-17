cask :v1 => 'android-studio-canary' do
  version '1.2.0.8'
  sha256 '0efab53a2b5510f9164987b363ec02a60382a55d3de9c2e0308d233e3ca26507'

  url "http://dl.google.com/dl/android/studio/ide-zips/1.2.0.8/android-studio-ide-141.1845774-mac.zip"
       
  homepage 'http://tools.android.com/download/studio'
  license :apache

  app 'Android Studio.app', :target => 'Android Studio Beta.app'

  caveats <<-EOS.undent
    If you have Java 7 or above installed, you may want to use it as Android Studio JDK, for example:

    export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk

    Please take a look at this post: http://tools.android.com/recent/androidstudio1rc3_releasecandidate3released
  EOS
end
