cask :v1 => 'dash2' do
  version '2.2.5'
  sha256 'a7de5e00528611f86d1024164b1b5d536ce039344b6ca3c211918c7458f7e412'

  url 'https://newyork.kapeli.com/downloads/v2/Dash.zip'
  name 'Dash'
  homepage 'https://kapeli.com/dash'
  license :commercial

  app 'Dash.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                  '~/Library/Application Support/Dash',
                  '~/Library/Preferences/com.kapeli.dash.plist',
                  '~/Library/Preferences/com.kapeli.dashdoc.plist',
                 ]
end
