cask 'atom-beta' do
  version '1.4.0-beta3'
  sha256 'b4b177bd7937fb63bb3278c85b5efbbb7b08811ed91e64bcb47616c4341a3b63'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          :sha256 => 'f6eb5ed94e0d68fd64ad7be63ddacfaea7b3e29e237648c44c3b22e87c8b5ef8'
  name 'Github Atom Beta'
  homepage 'https://atom.io/beta'
  license :mit

  auto_updates true
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
