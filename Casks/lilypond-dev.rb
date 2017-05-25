cask 'lilypond-dev' do
  version '2.19.61-1'
  sha256 'db415bd8332fbb02853dcd4f66be6b8f5326e5b0144a6e44743bd4aeefb59f0d'

  # linuxaudio.org/lilypond was verified as official when first introduced to the cask
  url "http://download.linuxaudio.org/lilypond/binaries/darwin-x86/lilypond-#{version}.darwin-x86.tar.bz2"
  name 'LilyPond'
  homepage 'http://lilypond.org/'

  app 'LilyPond.app'

  binaries = %w[
               abc2ly
               convert-ly
               lilypond
               lilypond-book
               musicxml2ly
             ]

  binaries.each do |shimscript|
    binary "#{staged_path}/#{shimscript}.wrapper.sh", target: shimscript
  end

  preflight do
    binaries.each do |shimscript|
      # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
      IO.write "#{staged_path}/#{shimscript}.wrapper.sh", <<-EOS.undent
          #!/bin/sh
          exec '#{appdir}/LilyPond.app/Contents/Resources/bin/#{shimscript}' "$@"
        EOS
    end
  end

  zap delete: [
                '~/Library/Preferences/org.lilypond.lilypond.plist',
                '~/Library/Preferences/org.lilypond.lilypond.LSSharedFileList.plist',
              ]
end
