cask "wine-devel" do
  version "7.17"
  sha256 "5b2574de4a6b628e22be508cce39b79474bd3cc0ba9f4b048c9d882ac5533938"

  # Current winehq packages are deprecated and these are packages from
  # the new maintainers that will eventually be pushed to Winehq.
  # See https://www.winehq.org/pipermail/wine-devel/2021-July/191504.html
  url "https://github.com/Gcenx/macOS_Wine_builds/releases/download/#{version}/wine-devel-#{version}-osx64.tar.xz",
      verified: "https://github.com/Gcenx/macOS_Wine_builds/"
  name "WineHQ-devel"
  desc "Compatibility layer to run Windows applications"
  homepage "https://wiki.winehq.org/MacOS"

  livecheck do
    url "https://github.com/Gcenx/macOS_Wine_builds/releases"
    strategy :page_match
    regex(/href=.*?wine[._-]devel[._-]v?(\d+(?:\.\d+)+)[._-]osx64\.t/i)
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
