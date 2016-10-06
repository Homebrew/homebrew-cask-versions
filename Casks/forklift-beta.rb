cask 'forklift-beta' do
  version '3.b3'
  sha256 'db78b6d6ebc6e1d7793ecb1f3e8d40245fa9b6ca196bf256c0712c7073162fb9'

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
