cask 'webstorm-eap' do
  version '2018.1,181.3870.1'
  sha256 '1135fcaed5bd4445ebc32beecfe6eb527ae5bdd7445d297f48896cd75f92b226'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version.after_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=eap',
          checkpoint: 'e138ac1994cb805e7c1d8fb254a263ffea5961bab298d517b2c55d3f982a16a5'
  name 'WebStorm EAP'
  homepage 'https://www.jetbrains.com/webstorm/eap/'

  auto_updates true

  app "WebStorm #{version.before_comma} EAP.app"

  zap trash: [
               "~/Library/Application Support/WebStorm#{version.major_minor}",
               "~/Library/Caches/WebStorm#{version.major_minor}",
               "~/Library/Logs/WebStorm#{version.major_minor}",
               "~/Library/Preferences/WebStorm#{version.major_minor}",
               '~/Library/Preferences/com.jetbrains.WebStorm-EAP.plist',
               '~/Library/Saved Application State/com.jetbrains.WebStorm-EAP.savedState',
             ]
end
