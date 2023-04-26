cask "google-japanese-ime-dev" do
  version :latest
  sha256 :no_check

  url "https://dl.google.com/japanese-ime/dev/GoogleJapaneseInput.dmg",
      verified: "dl.google.com/japanese-ime/"
  name "Google Japanese Input Method Editor"
  desc "Japanese input software"
  homepage "https://www.google.co.jp/ime/"

  pkg "GoogleJapaneseInput.pkg"

  uninstall pkgutil:   [
              "com.google.pkg.GoogleJapaneseInput",
              "com.google.pkg.Keystone",
            ],
            launchctl: [
              "com.google.inputmethod.Japanese.Converter",
              "com.google.inputmethod.Japanese.Renderer",
              "com.google.keystone.agent",
              "com.google.keystone.daemon",
              "com.google.keystone.system.agent",
              "com.google.keystone.system.xpcservice",
              "com.google.keystone.xpcservice",
            ]

  zap trash: [
    "~/Library/Application Support/Google/JapaneseInput",
    "~/Library/Logs/GoogleJapaneseInput",
    "~/Library/Saved Application State/com.google.inputmethod.Japanese.Tool.ConfigDialog.savedState",
    "~/Library/Saved Application State/com.google.UninstallGoogleJapaneseInput.savedState",
  ]
end
