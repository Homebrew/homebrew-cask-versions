cask 'atom-beta' do
  version '1.10.0-beta1'
  sha256 '098d8d8437a0659b3fb24432b775fdb77a7cfbbca130cc250c8f14d227de5c5b'

  # github.com/atom/atom was verified as official when first introduced to the cask
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          checkpoint: '98cac7cdac9cc2c4b190b5b4fac2b55e617ca638d2452862eebee2fd3e1c8ce8'
  name 'Github Atom Beta'
  homepage 'https://atom.io/beta'
  license :mit

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Atom Beta.app'
  binary "#{appdir}/Atom Beta.app/Contents/Resources/app/apm/node_modules/.bin/apm", target: 'apm'
  binary "#{appdir}/Atom Beta.app/Contents/Resources/app/atom.sh", target: 'atom-beta'

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
