cask "microsoft-office-2016" do
  version "16.16.20101200"
  sha256 "f108918241da7bd1442b97e42c6f9c3d9241202461c2f8ea0fc4e8abb2a1c581"

  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Office_#{version}_Installer.pkg",
      verified: "officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/"
  name "Microsoft Office"
  desc "Office suite"
  homepage "https://products.office.com/mac/microsoft-office-for-mac/"

  auto_updates true
  conflicts_with cask: [
    "microsoft-excel",
    "microsoft-office",
    "microsoft-office-businesspro",
    "microsoft-onenote",
    "microsoft-outlook",
    "microsoft-powerpoint",
    "microsoft-word",
    "onedrive",
  ]
  depends_on macos: ">= :sierra"

  pkg "Microsoft_Office_#{version}_Installer.pkg"

  uninstall pkgutil:   [
              "com.microsoft.OneDrive",
              "com.microsoft.package.DFonts",
              "com.microsoft.package.Fonts",
              "com.microsoft.package.Frameworks",
              "com.microsoft.package.Microsoft_AutoUpdate.app",
              "com.microsoft.package.Microsoft_Excel.app",
              "com.microsoft.package.Microsoft_OneNote.app",
              "com.microsoft.package.Microsoft_Outlook.app",
              "com.microsoft.package.Microsoft_PowerPoint.app",
              "com.microsoft.package.Microsoft_Word.app",
              "com.microsoft.package.Proofing_Tools",
              "com.microsoft.pkg.licensing",
            ],
            delete:    [
              "/Applications/Microsoft Excel.app",
              "/Applications/Microsoft OneNote.app",
              "/Applications/Microsoft Outlook.app",
              "/Applications/Microsoft PowerPoint.app",
              "/Applications/Microsoft Word.app",
              "/Applications/OneDrive.app",
            ],
            launchctl: [
              "com.microsoft.autoupdate.helper",
              "com.microsoft.office.licensing.helper",
              "com.microsoft.office.licensingV2.helper",
              "com.microsoft.OneDriveStandaloneUpdater",
              "com.microsoft.OneDriveStandaloneUpdaterDaemon",
              "com.microsoft.OneDriveUpdaterDaemon",
              "com.microsoft.update.agent",
            ],
            quit:      "com.microsoft.autoupdate2"

  zap trash:     [
        "~/Library/Application Scripts/com.microsoft.errorreporting",
        "~/Library/Application Scripts/com.microsoft.Excel",
        "~/Library/Application Scripts/com.microsoft.Office365ServiceV2",
        "~/Library/Application Scripts/com.microsoft.onenote.mac",
        "~/Library/Application Scripts/com.microsoft.Outlook",
        "~/Library/Application Scripts/com.microsoft.Powerpoint",
        "~/Library/Application Scripts/com.microsoft.Word",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.excel.sfl*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.powerpoint.sfl*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.word.sfl*",
        "~/Library/Caches/com.microsoft.autoupdate.fba",
        "~/Library/Caches/com.microsoft.autoupdate2",
        "~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate.fba",
        "~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate2",
        "~/Library/Containers/com.microsoft.com.microsoft.RMS-XPCService",
        "~/Library/Containers/com.microsoft.errorreporting",
        "~/Library/Containers/com.microsoft.Excel",
        "~/Library/Containers/com.microsoft.netlib.shipassertprocess",
        "~/Library/Containers/com.microsoft.Office365ServiceV2",
        "~/Library/Containers/com.microsoft.onenote.mac",
        "~/Library/Containers/com.microsoft.Outlook",
        "~/Library/Containers/com.microsoft.Powerpoint",
        "~/Library/Containers/com.microsoft.Word",
        "~/Library/Cookies/com.microsoft.autoupdate.fba.binarycookies",
        "~/Library/Cookies/com.microsoft.autoupdate2.binarycookies",
        "~/Library/Group Containers/UBF8T346G9.ms",
        "~/Library/Group Containers/UBF8T346G9.Office",
        "~/Library/Group Containers/UBF8T346G9.OfficeOneDriveSyncIntegration",
        "~/Library/Group Containers/UBF8T346G9.OfficeOsfWebHost",
        "~/Library/Preferences/com.microsoft.autoupdate.fba.plist",
        "~/Library/Preferences/com.microsoft.autoupdate2.plist",
        "~/Library/Preferences/com.microsoft.Excel.plist",
        "~/Library/Preferences/com.microsoft.Outlook.plist",
        "~/Library/Preferences/com.microsoft.Powerpoint.plist",
        "~/Library/Preferences/com.microsoft.Word.plist",
        "~/Library/Saved Application State/com.microsoft.autoupdate2.savedState",
        "~/Library/Saved Application State/com.microsoft.office.setupassistant.savedState",
      ],
      rmdir:     [
        "~/Library/Caches/Microsoft",
        "~/Library/Caches/Microsoft/uls",
      ],
      launchctl: [
        "com.microsoft.autoupdate.helper",
        "com.microsoft.autoupdate.helpertool",
        "com.microsoft.update.agent",
      ],
      pkgutil:   "com.microsoft.package.Microsoft_AutoUpdate.app"

  caveats do
    discontinued
  end
end
