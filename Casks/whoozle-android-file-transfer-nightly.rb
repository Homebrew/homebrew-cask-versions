cask 'whoozle-android-file-transfer-nightly' do
  version :latest
  sha256 :no_check

  # github.com/whoozle/android-file-transfer-linux was verified as official when first introduced to the cask
  url 'https://github.com/whoozle/android-file-transfer-linux/releases/download/continuous/AndroidFileTransferForLinux.dmg'
  name 'Android File Transfer'
  homepage 'https://whoozle.github.io/android-file-transfer-linux/'

  conflicts_with cask: [
                         'android-file-transfer',
                         'whoozle-android-file-transfer',
                       ]

  app 'Android File Transfer for Linux.app'
end
