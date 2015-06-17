cask :v1 => 'android-studio-canary' do
  version '1.3.0.4'
  sha256 'cdb7d45fc8ed890ad9e51eebdf3c86b6784c461049a83e50be3cc8704c1f969d'

  url "http://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2017176-mac.zip"
  homepage 'http://tools.android.com/download/studio'
  license :apache

  app 'Android Studio.app'

  caveats <<-EOS.undent
    If you have Java 7 or above installed, you may want to use it as Android Studio JDK, for example:

    export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk

    Please take a look at this post: http://tools.android.com/recent/androidstudio1rc3_releasecandidate3released
  EOS
end
