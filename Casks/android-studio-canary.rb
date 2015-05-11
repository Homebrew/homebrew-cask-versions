cask :v1 => 'android-studio-canary' do
  version '1.2.0.12'
  sha256 '203562c1696506c3c0b7c6ab240d06fdcc903db7ae8c9287d6beb1183bbef914'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.1890965-mac.zip"
  homepage 'http://tools.android.com/download/studio'
  license :apache

  app 'Android Studio.app'

  caveats <<-EOS.undent
    If you have Java 7 or above installed, you may want to use it as Android Studio JDK, for example:

    export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk

    Please take a look at this post: http://tools.android.com/recent/androidstudio1rc3_releasecandidate3released
  EOS
end
