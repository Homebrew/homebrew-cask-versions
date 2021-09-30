cask "lilypond-dev" do
  version "2.23.3-1"
  sha256 "46113d7edc432297012e71ad66db88f909b8fdca3c1a5baca8560e1efbae17d0"

  url "https://lilypond.org/downloads/binaries/darwin-x86/lilypond-#{version}.darwin-x86.tar.bz2"
  name "LilyPond"
  desc "Music engraving program"
  homepage "https://lilypond.org/"

  livecheck do
    url "https://lilypond.org/development.html"
    strategy :page_match
    regex(%r{href=.*?/lilypond-(\d+(?:\.\d+)*(?:-\d+)?)\.darwin-x86\.tar\.bz2}i)
  end

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
      File.write "#{staged_path}/#{shimscript}.wrapper.sh", <<~EOS
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
