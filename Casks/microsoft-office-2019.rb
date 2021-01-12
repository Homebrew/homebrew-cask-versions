cask "microsoft-office-2019" do
  version "16.44.20121301"
  sha256 "da1848641fcb8496715d1153ac5398f0cd7303324bb72e6dc568f373f2e4bb34"

  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Office_#{version}_Installer.pkg",
      verified: "officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/"
  name "Microsoft Office"
  homepage "https://www.microsoft.com/en-us/microsoft-365/get-started-with-office-2019"

  livecheck do
    url "https://go.microsoft.com/fwlink/p/?linkid=525133"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: %w[
    microsoft-office
    microsoft-word
    microsoft-excel
    microsoft-powerpoint
    onedrive
  ]
  depends_on macos: ">= :sierra"

  pkg "Microsoft_Office_#{version}_Installer.pkg"

  uninstall pkgutil:   [
    "com.microsoft.package.DFonts",
    "com.microsoft.package.Fonts",
    "com.microsoft.package.Frameworks",
    "com.microsoft.package.Microsoft_Excel.app",
    "com.microsoft.package.Microsoft_OneNote.app",
    "com.microsoft.package.Microsoft_Outlook.app",
    "com.microsoft.package.Microsoft_PowerPoint.app",
    "com.microsoft.package.Microsoft_Word.app",
    "com.microsoft.package.Proofing_Tools",
    "com.microsoft.pkg.licensing",
    "com.microsoft.OneDrive",
  ],
            # Frameworks, DFonts and ProofingTools remain in each applicaiton after pkg uninstall, delete them
            delete:    [
              "/Applications/Microsoft Excel.app",
              "/Applications/Microsoft OneNote.app",
              "/Applications/Microsoft Outlook.app",
              "/Applications/Microsoft PowerPoint.app",
              "/Applications/Microsoft Word.app",
              "/Applications/OneDrive.app",
            ],
            launchctl: [
              "com.microsoft.OneDriveStandaloneUpdater",
              "com.microsoft.OneDriveStandaloneUpdaterDaemon",
              "com.microsoft.OneDriveUpdaterDaemon",
              "com.microsoft.office.licensing.helper",
              "com.microsoft.office.licensingV2.helper",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.Excel",
    "~/Library/Application Scripts/com.microsoft.Office365ServiceV2",
    "~/Library/Application Scripts/com.microsoft.Outlook",
    "~/Library/Application Scripts/com.microsoft.Powerpoint",
    "~/Library/Application Scripts/com.microsoft.Word",
    "~/Library/Application Scripts/com.microsoft.errorreporting",
    "~/Library/Application Scripts/com.microsoft.onenote.mac",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.excel.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.powerpoint.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.word.sfl*",
    "~/Library/Application Support/CrashReporter/Microsoft Error Reporting_*.plist",
    "~/Library/Application Support/Microsoft Update Assistant",
    "~/Library/Caches/com.microsoft.OneDriveStandaloneUpdater",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.microsoft.OneDriveStandaloneUpdater",
    "~/Library/Containers/com.microsoft.Excel",
    "~/Library/Containers/com.microsoft.Office365ServiceV2",
    "~/Library/Containers/com.microsoft.Outlook",
    "~/Library/Containers/com.microsoft.Powerpoint",
    "~/Library/Containers/com.microsoft.com.microsoft.RMS-XPCService",
    "~/Library/Containers/com.microsoft.Word",
    "~/Library/Containers/com.microsoft.errorreporting",
    "~/Library/Containers/com.microsoft.netlib.shipassertprocess",
    "~/Library/Containers/com.microsoft.onenote.mac",
    "~/Library/Group Containers/UBF8T346G9.Office",
    "~/Library/Group Containers/UBF8T346G9.OfficeOneDriveSyncIntegration",
    "~/Library/Group Containers/UBF8T346G9.OfficeOsfWebHost",
    "~/Library/Group Containers/UBF8T346G9.ms",
    "~/Library/Preferences/com.microsoft.Excel.plist",
    "~/Library/Preferences/com.microsoft.Outlook.plist",
    "~/Library/Preferences/com.microsoft.Powerpoint.plist",
    "~/Library/Preferences/com.microsoft.Word.plist",
    "~/Library/Saved Application State/com.microsoft.office.setupassistant.savedState",
  ]
end
