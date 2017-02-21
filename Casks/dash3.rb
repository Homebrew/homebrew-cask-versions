cask 'dash3' do
  version '3.4.3'
  sha256 '752c7b966709afa35759396b0b79172e8d2c54aff4c00ba9c01b3dd294df786b'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: '8f674d3070ac1650ccdb286030e843c5ba41afdd4a5df002a9c956193bc35a89'
  name 'Dash'
  homepage 'https://kapeli.com/dash'

  auto_updates true

  app 'Dash.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/Dash',
                '~/Library/Application Support/com.kapeli.dashdoc',
                '~/Library/Preferences/com.kapeli.dash.plist',
                '~/Library/Preferences/com.kapeli.dashdoc.plist',
              ]
end
