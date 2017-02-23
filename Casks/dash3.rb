cask 'dash3' do
  version '3.4.4'
  sha256 'a7fd1a759965d26a0de6a43b32aec857e3222fd02d4cfc6d0ef66a92da63d526'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: '51e03215a540b6316b8f3212843645dcba5eb719be296ba23db956dca2aea48d'
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
