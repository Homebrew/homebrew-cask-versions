cask :v1 => 'android-studio-canary' do
  version '1.3.0.6'
  sha256 'a8d1ea8b458df4beaebb1f9f4a410526f25d2110cc5ee8e885657e83232853c0'

  url "http://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2071668-mac.zip"
  homepage 'http://tools.android.com/download/studio'
  license :apache

  app 'Android Studio.app'

  caveats <<-EOS.undent
    If you have Java 7 or above installed, you may want to use it as Android Studio JDK, for example:

    export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk

    Please take a look at this post: http://tools.android.com/recent/androidstudio1rc3_releasecandidate3released
  EOS
end
