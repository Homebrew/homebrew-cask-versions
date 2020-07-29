cask "thunderbird-beta" do
  version :latest
  sha256 :no_check

  language "cs" do
    "cs"
  end

  language "en-GB" do
    "en-GB"
  end

  language "en", default: true do
    "en-US"
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

  url "https://download.mozilla.org/?product=thunderbird-beta-latest-SSL&os=osx&lang=#{language}"
  name "Mozilla Thunderbird"
  homepage "https://www.mozilla.org/en-US/thunderbird/beta/all/"

  conflicts_with cask: "thunderbird"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Thunderbird",
    "~/Library/Caches/Thunderbird",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
  ]
end
