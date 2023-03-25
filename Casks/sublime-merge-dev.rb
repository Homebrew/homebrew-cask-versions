cask "sublime-merge-dev" do
  version "2085"
  sha256 "3c1b33bd74bf0af7db9b5614109a2531914c2b6593e54dc9effc9f92d897e405"

  url "https://download.sublimetext.com/sublime_merge_build_#{version}_mac.zip",
      verified: "download.sublimetext.com/"
  name "Sublime Merge"
  desc "Git client"
  homepage "https://www.sublimemerge.com/dev"

  livecheck do
    url "https://www.sublimemerge.com/updates/dev_update_check"
    regex(/"latest_version"\s*:\s*(\d+)/i)
  end

  auto_updates true
  conflicts_with cask: "sublime-merge"

  app "Sublime Merge.app"
  binary "#{appdir}/Sublime Merge.app/Contents/SharedSupport/bin/smerge"

  uninstall quit: "com.sublimemerge"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimemerge.sfl*",
    "~/Library/Application Support/Sublime Merge",
    "~/Library/Caches/com.sublimemerge/",
    "~/Library/Preferences/com.sublimemerge.plist",
    "~/Library/Saved Application State/com.sublimemerge.savedState",
  ]
end
