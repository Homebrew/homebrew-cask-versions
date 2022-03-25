cask "sublime-merge-dev" do
  version "2069"
  sha256 "f34517d5fc108ebadeaba5990579afc3d9a71cee009103873b824cc1961cfadb"

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
