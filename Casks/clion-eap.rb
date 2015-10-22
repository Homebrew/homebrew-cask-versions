cask :v1 => 'clion-eap' do
  version '1.2-RC'
  sha256 '3d66cdda8a24799d4333ff61af59ae2bc23d10616d753e7a8fa3f004e6f2a082'

  url "https://download.jetbrains.com/cpp/CLion-#{version}-custom-jdk-bundled.dmg"
  name 'CLion'
  homepage 'https://confluence.jetbrains.com/display/CLION/Early+Access+Program'
  license :commercial

  app 'CLion.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.CLion.plist',
                  '~/Library/Preferences/clion12',
                  '~/Library/Application Support/clion12',
                  '~/Library/Caches/clion12',
                  '~/Library/Logs/clion12',
                 ]
end
