cask :v1 => 'android-studio-canary' do
  version '1.3.0.8'
  sha256 'cc06d31f71a4bbc94e3027846f8293ffe898c77d55eccb3dee1fb073cd1e3d1c'

  url "http://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2095413-mac.zip"
  homepage 'http://tools.android.com/download/studio'
  license :apache

  app 'Android Studio.app'

  caveats <<-EOS.undent
    If you have Java 7 or above installed, you may want to use it as Android Studio JDK, for example:

    export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk

    Please take a look at this post: http://tools.android.com/recent/androidstudio1rc3_releasecandidate3released
  EOS
end
