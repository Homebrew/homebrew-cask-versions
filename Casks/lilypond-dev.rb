cask "lilypond-dev" do
  version "2.23.80"
  sha256 "57949cba6b7af33c11d7cb3f89d45a03123e48a42cb8fd47b00f7c15260c0a0a"

  url "https://gitlab.com/lilypond/lilypond/-/releases/v#{version}/downloads/lilypond-#{version}-darwin-x86_64.tar.gz",
      verified: "gitlab.com/lilypond/lilypond"
  name "LilyPond"
  desc "Music engraving program"
  homepage "https://lilypond.org/"

  livecheck do
    url "https://lilypond.org/development.html"
    regex(%r{href=.*?/lilypond[._-]v?(\d+(?:\.\d+)*(?:-\d+)?)[._-]darwin[._-]x86_64\.t}i)
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
    "~/Library/Preferences/org.lilypond.lilypond.LSSharedFileList.plist",
    "~/Library/Preferences/org.lilypond.lilypond.plist",
  ]
end
