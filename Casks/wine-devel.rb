cask "wine-devel" do
  version "5.7"
  sha256 "7965a0d47bb37b072f9bee06be653e9c8a2ce084f558207aa8a519d9ac5e7e64"

  url "https://dl.winehq.org/wine-builds/macosx/pool/winehq-devel-#{version}.pkg"
  appcast "https://dl.winehq.org/wine-builds/macosx/download.html"
  name "WineHQ-devel"
  desc "Compatibility layer to run Windows applications"
  homepage "https://wiki.winehq.org/MacOS"

  conflicts_with cask: [
    "wine-stable",
    "wine-staging",
  ]
  depends_on cask: "xquartz"

  pkg "winehq-devel-#{version}.pkg",
      choices: [
        {
          "choiceIdentifier" => "choice3",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]
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

  uninstall pkgutil: [
    "org.winehq.wine-devel",
    "org.winehq.wine-devel-deps",
    "org.winehq.wine-devel-deps64",
    "org.winehq.wine-devel32",
    "org.winehq.wine-devel64",
  ],
            delete:  "/Applications/Wine Devel.app"

  caveats <<~EOS
    #{token} installs support for running 64 bit applications in Wine, which is considered experimental.
    If you do not want 64 bit support, you should download and install the #{token} package manually.
  EOS
end
