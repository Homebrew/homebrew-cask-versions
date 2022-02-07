cask "lilypond-dev" do
  version "2.23.6-1"
  sha256 "69684c8d000046dc5fe19938ced8bbbb0bdea2775f3b5cb3747194505afbc8ea"

  url "https://lilypond.org/downloads/binaries/darwin-x86/lilypond-#{version}.darwin-x86.tar.bz2"
  name "LilyPond"
  desc "Music engraving program"
  homepage "https://lilypond.org/"

  livecheck do
    url "https://lilypond.org/development.html"
    regex(%r{href=.*?/lilypond[._-]v?(\d+(?:\.\d+)*(?:-\d+)?)\.darwin[._-]x86\.tar\.bz2}i)
  end

  conflicts_with cask: "lilypond"

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
    "~/Library/Preferences/org.lilypond.lilypond.LSSharedFileList.plist",
    "~/Library/Preferences/org.lilypond.lilypond.plist",
  ]
end
