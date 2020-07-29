cask "lilypond-dev" do
  version "2.19.84-1"
  sha256 "14c7d0cee5c31fed433fa8f4d2dda94d83e4eff7ef4ab683071131a3d759a0fd"

  url "https://lilypond.org/downloads/binaries/darwin-x86/lilypond-#{version}.darwin-x86.tar.bz2"
  appcast "https://lilypond.org/development.html"
  name "LilyPond"
  homepage "https://lilypond.org/"

  app "LilyPond.app"

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
      # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
      IO.write "#{staged_path}/#{shimscript}.wrapper.sh", <<~EOS
        #!/bin/sh
        exec '#{appdir}/LilyPond.app/Contents/Resources/bin/#{shimscript}' "$@"
      EOS
    end
  end

  zap trash: [
    "~/Library/Preferences/org.lilypond.lilypond.plist",
    "~/Library/Preferences/org.lilypond.lilypond.LSSharedFileList.plist",
  ]
end
