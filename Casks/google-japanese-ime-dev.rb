cask "google-japanese-ime-dev" do
  version :latest
  sha256 :no_check

  url "https://dl.google.com/japanese-ime/dev/GoogleJapaneseInput.dmg",
      verified: "dl.google.com/japanese-ime/"
  name "Google Japanese Input Method Editor"
  homepage "https://www.google.co.jp/ime/"

  pkg "GoogleJapaneseInput.pkg"

  uninstall pkgutil:   "com.google.pkg.GoogleJapaneseInput",
            launchctl: [
              "com.google.inputmethod.Japanese.Converter",
              "com.google.inputmethod.Japanese.Renderer",
            ]
end
