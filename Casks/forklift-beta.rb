cask 'forklift-beta' do
  version '3.b7'
  sha256 '9dadcd800194b29f0db4660a8b55b6229d91ec140526eb89c100aa54f6c61137'

  url "http://download.binarynights.com/ForkLift#{version.no_dots}.zip"
  appcast "http://update.binarynights.com/ForkLift#{version.major}/update.xml",
          checkpoint: 'e9637840c3af9bb45202af5a3905eabd6f82e0f2e47f5a552cd65f308b5dab46'
  name 'ForkLift'
  homepage 'https://www.binarynights.com/'

  app 'ForkLift.app'

  zap delete: [
                "~/Library/Preferences/com.binarynights.ForkLift-#{version.major}.plist",
                '~/Library/Application Support/ForkLift',
                "~/Library/Saved Application State/com.binarynights.ForkLift-#{version.major}.savedState",
                "~/Library/Caches/com.binarynights.ForkLift-#{version.major}",
              ]
end
