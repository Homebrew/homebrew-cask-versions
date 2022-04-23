cask "sublime-merge-dev" do
  version "2070"
  sha256 "b55e031f65a505b44a106c753c4c385f02749dbdf10fc88ffb3706f7f048335a"

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
