cask "parallels12" do
  version "12.2.1-41615"
  sha256 "d5aff59a541bf3483cbed9c740b3a740ba7ebb922fcee4a7ab90e2645ce49fcb"

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsDesktop-#{version}.dmg"
  name "Parallels Desktop"
  desc "Desktop virtualization software"
  homepage "https://www.parallels.com/products/desktop/"

  livecheck do
    url "https://kb.parallels.com/123948"
    strategy :page_match do |page|
      match = page.match(/Parallels Desktop 12 for Mac\s*(\d+(?:\.\d+)+)\s*\((\d+)\)/i)
      next if match.blank?

      "#{match[1]}-#{match[2]}"
    end
  end

  conflicts_with cask: [
    "parallels",
    "homebrew/cask-versions/parallels13",
    "homebrew/cask-versions/parallels14",
    "homebrew/cask-versions/parallels15",
    "homebrew/cask-versions/parallels16",
  ]
  depends_on macos: [
    :yosemite,
    :el_capitan,
    :sierra,
  ]

  app "Parallels Desktop.app"

  postflight do
    # Unhide the application
    system_command "/usr/bin/chflags",
                   args: ["nohidden", "#{appdir}/Parallels Desktop.app"],
                   sudo: true

    # Run the initialization script
    system_command "#{appdir}/Parallels Desktop.app/Contents/MacOS/inittool",
                   args: ["init", "-b", "#{appdir}/Parallels Desktop.app"],
                   sudo: true
  end

  uninstall_preflight do
    set_ownership "#{appdir}/Parallels Desktop.app"
  end

  uninstall delete: [
    "/usr/local/bin/prl_convert",
    "/usr/local/bin/prl_disk_tool",
    "/usr/local/bin/prl_perf_ctl",
    "/usr/local/bin/prlcore2dmp",
    "/usr/local/bin/prlctl",
    "/usr/local/bin/prlexec",
    "/usr/local/bin/prlsrvctl",
  ]

  zap trash: [
    "~/.parallels_settings",
    "~/Library/Caches/com.parallels.desktop.console",
    "~/Library/Preferences/com.parallels.desktop.console.LSSharedFileList.plist",
    "~/Library/Preferences/com.parallels.desktop.console.plist",
    "~/Library/Preferences/com.parallels.Parallels Desktop Statistics.plist",
    "~/Library/Preferences/com.parallels.Parallels Desktop.plist",
    "~/Library/Preferences/com.parallels.Parallels.plist",
  ]
end
