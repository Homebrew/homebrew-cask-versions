cask 'datagrip-eap' do
  version '2017.1,171.2455.7'
  sha256 '62f0ecac1518b9b1b7f2ed57c88afd9e21d89aeafae3ec6f80cfbef152c660f6'

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
