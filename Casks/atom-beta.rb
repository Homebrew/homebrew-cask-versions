cask 'atom-beta' do
  version '1.6.0-beta8'
  sha256 'a1ab27b90b383a5b2f0d8dd9ad771f6418e707bc744c1fe51c4b5e37a57e1646'

  # github.com/atom/atom was verified as official when first introduced to the cask
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          checkpoint: 'dab37fbd24f7b6e63b62952f485553820a90b14c314806ed3eb1e0c0bbde92f3'
  name 'Github Atom Beta'
  homepage 'https://atom.io/beta'
  license :mit

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Atom Beta.app'
  binary 'Atom Beta.app/Contents/Resources/app/apm/node_modules/.bin/apm', target: 'apm'
  binary 'Atom Beta.app/Contents/Resources/app/atom.sh', target: 'atom-beta'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/.atom',
                '~/Library/Application Support/ShipIt_stderr.log',
                '~/Library/Application Support/Atom',
                '~/Library/Application Support/ShipIt_stdout.log',
                '~/Library/Application Support/com.github.atom.ShipIt',
                '~/Library/Caches/com.github.atom',
                '~/Library/Preferences/com.github.atom.plist',
              ]
end
