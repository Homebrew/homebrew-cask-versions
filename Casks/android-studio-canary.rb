cask :v1 => 'android-studio-canary' do
  version '1.3.0.5'
  sha256 '6591384dd1f916c00306bc656ed61e53e0b309de431597c492f332e75f3c16a8'

  url "http://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2024585-mac.zip"
  homepage 'http://tools.android.com/download/studio'
  license :apache

  app 'Android Studio.app'

  caveats <<-EOS.undent
    If you have Java 7 or above installed, you may want to use it as Android Studio JDK, for example:

    export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk

    Please take a look at this post: http://tools.android.com/recent/androidstudio1rc3_releasecandidate3released
  EOS
end
