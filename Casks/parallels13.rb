cask "parallels13" do
  version "13.3.2-43368"
  sha256 "a79bb516ed3ec81c5b2c9150b1d605c2a2fc596e426effe24177693939db795f"

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsDesktop-#{version}.dmg"
  name "Parallels Desktop"
  desc "Desktop virtualization software"
  homepage "https://www.parallels.com/products/desktop/"

  livecheck do
    url "https://kb.parallels.com/124262"
    regex(/(v?\d+(?:\.\d+)+\s*\(\d+\)|\(v?\d+(?:\.\d+)+-\d+\))/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match.first.strip.tr("()", "").gsub(/\s+/, "-") }
    end
  end

  conflicts_with cask: [
    "parallels",
    "homebrew/cask-versions/parallels12",
    "homebrew/cask-versions/parallels14",
    "homebrew/cask-versions/parallels15",
    "homebrew/cask-versions/parallels16",
    "homebrew/cask-versions/parallels17",
  ]
  depends_on macos: "<= :high_sierra"

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
