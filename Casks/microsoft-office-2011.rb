cask "microsoft-office-2011" do
  version "2011"
  sha256 :no_check

  language "de" do
    "de-DE"
  end

  language "en", default: true do
    "en-US"
  end

  language "ja" do
    "ja-JP"
  end

  url "https://officecdn.microsoft.com/pr/MacOffice#{version}/#{language}/MicrosoftOffice#{version}.dmg"
  name "Microsoft Office 2011"
  homepage "https://www.microsoft.com/mac"

  if language == "ja-JP"
    pkg "Office インストーラー.pkg"
  else
    pkg "Office Installer.pkg"
  end

  uninstall pkgutil:   "com.microsoft.office.*",
            launchctl: "com.microsoft.office.licensing.helper"

  zap pkgutil: [
    "com.microsoft.mau.all.autoupdate.*",
    "com.microsoft.merp.all.errorreporting.*",
  ],
      trash:   [
        "/Library/LaunchDaemons/com.microsoft.office.licensing.helper.plist",
        "/Library/PrivilegedHelperTools/com.microsoft.office.licensing.helper",
        "/Library/Application Support/Microsoft/MAU2.0",
        "/Library/Application Support/Microsoft/MERP2.0",
        "/Library/Preferences/com.microsoft.Excel.plist",
        "/Library/Preferences/com.microsoft.Outlook.plist",
        "/Library/Preferences/com.microsoft.PlayReady.plist",
        "/Library/Preferences/com.microsoft.Powerpoint.plist",
        "/Library/Preferences/com.microsoft.Word.plist",
        "/Library/Preferences/com.microsoft.office.licensing.plist",
        "/Library/Preferences/com.microsoft.outlook.databasedaemon.plist",
        "/Library/Preferences/com.microsoft.outlook.officereminders.plist",
        "/Library/Fonts/Microsoft",
        "~/Library/Application Support/Microsoft/Office",
        "~/Library/Preferences/com.microsoft.Excel.plist",
        "~/Library/Preferences/com.microsoft.Outlook.plist",
        "~/Library/Preferences/com.microsoft.Powerpoint.plist",
        "~/Library/Preferences/com.microsoft.Word.plist",
        "~/Library/Preferences/com.microsoft.autoupdate2.plist",
        "~/Library/Preferences/com.microsoft.error_reporting.plist",
        "~/Library/Preferences/com.microsoft.office.plist",
        "~/Library/Preferences/com.microsoft.office.setupassistant.plist",
        "~/Library/Preferences/com.microsoft.outlook.databasedaemon.plist",
        "~/Library/Preferences/com.microsoft.outlook.office_reminders.plist",
        "~/Library/Preferences/com.microsoft.outlook.officereminders.plist",
        "~/Documents/Microsoft User Data/Microsoft",
        "~/Documents/Microsoft User Data/Office 2011 Identities",
        "~/Documents/Microsoft User Data/Outlook Sound Sets",
        "~/Documents/Microsoft User Data/Saved Attachments",
        "~/Documents/Microsoft-Benutzerdaten/Microsoft",
        "~/Documents/Microsoft-Benutzerdaten/Office 2011 Identities",
        "~/Documents/Microsoft-Benutzerdaten/Outlook Sound Sets",
        "~/Documents/Microsoft-Benutzerdaten/Saved Attachments",
        "~/Documents/Microsoft ユーザー データ/Microsoft",
        "~/Documents/Microsoft ユーザー データ/Office 2011 Identities",
        "~/Documents/Microsoft ユーザー データ/Outlook Sound Sets",
        "~/Documents/Microsoft ユーザー データ/Saved Attachments",
      ],
      rmdir:   [
        "/Library/Application Support/Microsoft",
        "~/Library/Application Support/Microsoft",
        "~/Documents/Microsoft User Data",
        "~/Documents/Microsoft-Benutzerdaten",
        "~/Documents/Microsoft ユーザー データ",
      ]
end
