cask "telegram-beta" do
  version "9.5.244163"
  sha256 "f8fbcfd0e54902199b6bfbd6538afc0465cb83d35ea2960773698c763ecc98f6"

  url "https://appcenter-filemanagement-distrib3ede6f06e.azureedge.net/0e1e1520-46ca-414c-bfa9-db6697871065/Telegram-#{version}.app.zip?sv=2019-02-02&sr=c&sig=dfk8lmIUqPE6daJFOG3%2Fo1uX6mS6I6aFtA0E0wChjZM%3D&se=2023-03-09T09%3A36%3A45Z&sp=r&download_origin=appcenter",
      verified: "appcenter-filemanagement-distrib3ede6f06e.azureedge.net"
  name "Telegram for macOS"
  desc "Messaging app with a focus on speed and security"
  homepage "https://macos.telegram.org/"

  livecheck do
    url "https://install.appcenter.ms/api/v0.1/apps/keepcoder/Telergam-Beta-Updated/distribution_groups/public/public_releases?scope=tester&top=10000"
    strategy :page_match do |page|
      page.scan(/"short_version":\s*"(\d\.\d(?:\.\d)*)",\s*"version":\s*"([0-9]+)",/i)
          .map { |match| match&.first&.+"."+match&.second }
    end
  end

  auto_updates true
  conflicts_with cask: "telegram"
  depends_on macos: ">= :el_capitan"

  app "Telegram.app"

  uninstall quit: "ru.keepcoder.Telegram"

  zap trash: [
    "~/Library/Application Scripts/*.ru.keepcoder.Telegram",
    "~/Library/Application Scripts/*.ru.keepcoder.Telegram.TelegramShare",
    "~/Library/Application Scripts/ru.keepcoder.Telegram",
    "~/Library/Application Scripts/ru.keepcoder.Telegram.TelegramShare",
    "~/Library/Application Support/ru.keepcoder.Telegram",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/ru.keepcoder.Telegram",
    "~/Library/Caches/ru.keepcoder.Telegram",
    "~/Library/Containers/ru.keepcoder.Telegram",
    "~/Library/Containers/ru.keepcoder.Telegram.TelegramShare",
    "~/Library/Cookies/ru.keepcoder.Telegram.binarycookies",
    "~/Library/Group Containers/*.ru.keepcoder.Telegram",
    "~/Library/Group Containers/*.ru.keepcoder.Telegram.TelegramShare",
    "~/Library/HTTPStorages/ru.keepcoder.Telegram",
    "~/Library/Preferences/ru.keepcoder.Telegram.plist",
    "~/Library/Saved Application State/ru.keepcoder.Telegram.savedState",
  ]
end
