cask :v1 => 'android-studio-canary' do
  version '1.2.1.1'
  sha256 '217dc31340a6068bbc32e448595332e4289346e558bfc513e8ae7d50cb1f21c2'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.1903250-mac.zip"
  homepage 'http://tools.android.com/download/studio'
  license :apache

  app 'Android Studio.app'

  caveats <<-EOS.undent
    If you have Java 7 or above installed, you may want to use it as Android Studio JDK, for example:

    export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk

    Please take a look at this post: http://tools.android.com/recent/androidstudio1rc3_releasecandidate3released
  EOS
end
