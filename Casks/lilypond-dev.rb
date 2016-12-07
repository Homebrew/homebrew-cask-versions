cask 'lilypond-dev' do
  version '2.19.52-1'
  sha256 '099c7947b76452b187e07bfb459cac8e7aa276444e2315f9521f14bfefba8367'

  # linuxaudio.org/lilypond was verified as official when first introduced to the cask
  url "http://download.linuxaudio.org/lilypond/binaries/darwin-x86/lilypond-#{version}.darwin-x86.tar.bz2"
  name 'LilyPond'
  homepage 'http://lilypond.org/'

  app 'LilyPond.app'
  binary "#{appdir}/LilyPond.app/Contents/Resources/bin/lilypond"
  binary "#{appdir}/LilyPond.app/Contents/Resources/bin/lilypond-book"
  binary "#{appdir}/LilyPond.app/Contents/Resources/bin/convert-ly"

  zap delete: [
                '~/Library/Preferences/org.lilypond.lilypond.plist',
                '~/Library/Preferences/org.lilypond.lilypond.LSSharedFileList.plist',
              ]
end
