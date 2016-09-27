cask 'forklift-beta' do
  version '3.b2'
  sha256 '1bde2a66445c8df2c6cf2195d4d006526cc632ca317aab40012a4e39a053db0c'

  url "http://download.binarynights.com/ForkLift#{version.no_dots}.zip"
  appcast "http://update.binarynights.com/ForkLift#{version.major}/update.xml",
          checkpoint: 'e9637840c3af9bb45202af5a3905eabd6f82e0f2e47f5a552cd65f308b5dab46'
  name 'ForkLift'
  homepage 'http://www.binarynights.com/'
  license :commercial

  app 'ForkLift.app'

  zap delete: [
                "~/Library/Preferences/com.binarynights.ForkLift-#{version.major}.plist",
                '~/Library/Application Support/ForkLift',
                "~/Library/Saved Application State/com.binarynights.ForkLift-#{version.major}.savedState",
                "~/Library/Caches/com.binarynights.ForkLift-#{version.major}",
              ]
end
