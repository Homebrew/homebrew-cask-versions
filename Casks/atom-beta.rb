cask 'atom-beta' do
  version '1.4.0-beta2'
  sha256 'b8752bac94a9c659bc7ab3b1d481f765ad089342c727c487b5a76addd3998bf9'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom'
  name 'Atom Beta'
  homepage 'https://atom.io/beta'
  license :mit
  tags :vendor => 'Github'

  depends_on :macos => '>= :mountain_lion'

  app 'Atom Beta.app'
  binary 'Atom Beta.app/Contents/Resources/app/apm/node_modules/.bin/apm', :target => 'apm'
  binary 'Atom Beta.app/Contents/Resources/app/atom.sh', :target => 'atom-beta'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                  '~/.atom',
                  '~/Library/Application Support/ShipIt_stderr.log',
                  '~/Library/Application Support/Atom',
                  '~/Library/Application Support/ShipIt_stdout.log',
                  '~/Library/Application Support/com.github.atom.ShipIt',
                  '~/Library/Caches/com.github.atom',
                  '~/Library/Preferences/com.github.atom.plist',
                 ]
end
