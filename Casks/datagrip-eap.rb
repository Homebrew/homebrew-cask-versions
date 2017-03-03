cask 'datagrip-eap' do
  version '2017.1,171.3691.11'
  sha256 'af569a2689bd2d275f50b0f1388b91453540feedcd4d9a5a51f2d6d2bddc272b'

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
