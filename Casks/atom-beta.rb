cask 'atom-beta' do
  version '1.8.0-beta1'
  sha256 'da21371945ac51704cd098b1c95e624501d87351307b77687d5adf7bf3d91050'

  # github.com/atom/atom was verified as official when first introduced to the cask
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          checkpoint: '389b4b86b343b7bf3ef904f93dfbbf268f0b1dd2736bd9d8a1370d9a64a6113d'
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
