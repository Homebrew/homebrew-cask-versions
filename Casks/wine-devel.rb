cask "wine-devel" do
  version "8.5"
  sha256 "26d6222b5bdbef78d79fbfbe9e39ddea7c7c87793f8d73b804422f0d17fb39be"

  # Current winehq packages are deprecated and these are packages from
  # the new maintainers that will eventually be pushed to Winehq.
  # See https://www.winehq.org/pipermail/wine-devel/2021-July/191504.html
  url "https://github.com/Gcenx/macOS_Wine_builds/releases/download/#{version}/wine-devel-#{version}-osx64.tar.xz",
      verified: "github.com/Gcenx/macOS_Wine_builds/"
  name "WineHQ-devel"
  desc "Compatibility layer to run Windows applications"
  homepage "https://wiki.winehq.org/MacOS"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: [
    "wine-stable",
    "wine-staging",
  ]

  app "Wine Devel.app"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/start/bin/appdb"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/start/bin/winehelp"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/msiexec"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/notepad"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/regedit"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/regsvr32"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/wine"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/wine64"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/wineboot"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/winecfg"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/wineconsole"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/winedbg"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/winefile"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/winemine"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/winepath"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/wineserver"

  zap trash: [
        "~/.local/share/applications/wine*",
        "~/.local/share/icons/hicolor/**/application-x-wine*",
        "~/.local/share/mime/application/x-wine*",
        "~/.local/share/mime/packages/x-wine*",
        "~/.wine",
        "~/.wine32",
        "~/Library/Saved Application State/org.winehq.wine-devel.wine.savedState",
      ],
      rmdir: [
        "~/.local/share/applications",
        "~/.local/share/icons",
        "~/.local/share/mime",
      ]

  caveats <<~EOS
    #{token} supports both 32-bit and 64-bit. It is compatible with an existing
    32-bit wine prefix, but it will now default to 64-bit when you create a new
    wine prefix. The architecture can be selected using the WINEARCH environment
    variable which can be set to either win32 or win64.

    To create a new pure 32-bit prefix, you can run:
      $ WINEARCH=win32 WINEPREFIX=~/.wine32 winecfg

    See the Wine FAQ for details: https://wiki.winehq.org/FAQ#Wineprefixes
  EOS
end
