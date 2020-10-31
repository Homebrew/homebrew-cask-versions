cask "firefox-developer-edition" do
  version :latest
  sha256 :no_check

  language "cs" do
    "cs"
  end
  language "de" do
    "de"
  end
  language "en-CA" do
    "en-CA"
  end
  language "en-GB" do
    "en-GB"
  end
  language "en", default: true do
    "en-US"
  end
  language "es" do
    "es-ES"
  end
  language "fr" do
    "fr"
  end
  language "ja" do
    "ja-JP-mac"
  end
  language "pt-BR" do
    "pt-BR"
  end
  language "ko" do
    "ko"
  end
  language "ru" do
    "ru"
  end
  language "uk" do
    "uk"
  end
  language "zh-TW" do
    "zh-TW"
  end
  language "zh" do
    "zh-CN"
  end

  url "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=osx&lang=#{language}"
  name "Mozilla Firefox Developer Edition"
  desc "Cross-platform web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  depends_on macos: ">= :sierra"

  app "Firefox Developer Edition.app"
end
