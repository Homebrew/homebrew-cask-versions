cask 'datagrip-eap' do
  version '2017.1,171.2822.18'
  sha256 'ad13ca52c73a287f91642655f9604cb04e971ed3a31caa07ab6223293dca23bb'

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
