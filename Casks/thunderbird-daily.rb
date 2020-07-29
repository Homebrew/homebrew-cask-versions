cask "thunderbird-daily" do
  version :latest
  sha256 :no_check # required as upstream package is updated in-place

  language "cs" do
    "cs"
  end

  language "en", default: true do
    "en-US"
  end

  language "ja" do
    "ja-JP-mac"
  end

  language "ru" do
    "ru"
  end

  language "uk" do
    "uk"
  end

  # download-installer.cdn.mozilla.net/pub/thunderbird/nightly was verified as official when first introduced to the cask
  url do
    require "open-uri"
    base_url = "https://download-installer.cdn.mozilla.net/pub/thunderbird/nightly"
    builds_url = "#{base_url}/latest-comm-central#{language == "en-US" ? "" : "-l10n"}/"
    latest_build_filename = URI(builds_url).open.read.scan(%r{<td><a href="/pub/thunderbird/nightly/([^"]+\.mac\.dmg)">}).flatten.grep(/\.#{language}\.mac\.dmg/).last
    "#{base_url}/#{latest_build_filename}"
  end
  name "Earlybird"
  name "Thunderbird Daily"
  homepage "https://www.mozilla.org/en-US/thunderbird/channel/"

  app "Thunderbird Daily.app"

  zap trash: [
    "~/Library/Thunderbird",
    "~/Library/Caches/Thunderbird",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Preferences/org.mozilla.thunderbird daily.plist",
  ]
end
