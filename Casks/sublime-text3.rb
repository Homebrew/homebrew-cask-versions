cask "sublime-text3" do
  version "3.211"
  sha256 "531c84e24983927c59dc0c5611f605776f917d1c516af80c69c09ea232d24e01"

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version.no_dots}.dmg"
  name "Sublime Text 3"
  desc "Text editor for code, markup and prose"
  homepage "https://www.sublimetext.com/3"

  auto_updates true
  conflicts_with cask: [
    "sublime-text",
    "sublime-text-dev",
  ]

  app "Sublime Text.app"
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

  uninstall quit: "com.sublimetext.#{version.major}"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimetext.#{version.major}.sfl*",
    "~/Library/Application Support/Sublime Text #{version.major}",
    "~/Library/Caches/com.sublimetext.#{version.major}",
    "~/Library/HTTPStorages/com.sublimetext.##{version.major}",
    "~/Library/Preferences/com.sublimetext.#{version.major}.plist",
    "~/Library/Saved Application State/com.sublimetext.#{version.major}.savedState",
  ]

  caveats do
    discontinued
  end
end
