cask 'datagrip-eap' do
  version '2017.1,171.3780.53'
  sha256 '9cf100beb0c841266f6657eb8b4b5f81af4d75776f9690cf1df8a1744e963cec'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version.after_comma}.dmg"
  name 'DataGrip'
  homepage 'https://www.jetbrains.com/datagrip/nextversion/'

  conflicts_with cask: 'datagrip'

  app "DataGrip #{version.before_comma} EAP.app"

  zap delete: [
                "~/Library/Application Support/DataGrip#{version.before_comma}",
                "~/Library/Caches/DataGrip#{version.before_comma}",
                "~/Library/Logs/DataGrip#{version.before_comma}",
                "~/Library/Preferences/DataGrip#{version.before_comma}",
              ]
end
