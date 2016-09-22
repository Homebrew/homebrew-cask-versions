cask 'forklift-beta' do
  version '3.b1'
  sha256 'abbad60a17efc262809e94517dfda90b510867942aa9e6de4a032c68bdd897c5'

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
