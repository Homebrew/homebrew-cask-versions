cask 'runlet' do
  version '1.0.0-alpha.1'
  sha256 '50498d3d5881b5ad489599b6f118165b05c038e997f18cfe45a8789b65a57c1c'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/runletapp/runlet/releases/download/v#{version.before_comma}/runlet_#{version.before_comma}_amd64.dmg"
  appcast 'https://github.com/runletapp/runlet/releases.atom'
  name 'Runlet'
  homepage 'https://runlet.app/'

  depends_on macos: '>= :yosemite'

  app 'Runlet.app'

  uninstall launchctl: 'app.runlet.daemon',
            quit:      'app.runlet'

  zap trash:  [
                '~/Library/Application Support/runlet',
                '~/Library/Application Support/runlet_daemon.log',
                '~/Library/LaunchAgents/app.runlet.daemon.plist',
                '~/.config/runlet',
              ],
      signal: [
                ['QUIT', 'app.runlet'],
                ['KILL', 'app.runlet'],
              ]
end
