cask "1password-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version :latest
  sha256 :no_check

  url do
    require "open-uri"
    base_url = "https://app-updates.agilebits.com/product_history/OPM8"
    latest_build_filename = URI(base_url).open do |io|
      io.read.scan(%r{<a href="/dist/1P/mac8/1Password-(\d+\.\d+\.\d+-\d+\.\w+)-#{arch}\.zip"}i).flatten.first
    end
    version = latest_build_filename.split("-")[0]
    "https://c.1password.com/dist/1P/mac8/1Password-#{version}-#{arch}.zip"
  end

  name "1Password Nightly"
  desc "Password manager that keeps all passwords secure behind one password"
  homepage "https://1password.com/"

  auto_updates true
  conflicts_with cask: ["1password", "homebrew/cask-versions/1password-beta"]
  depends_on macos: ">= :high_sierra"

  app "1Password.app"

  # zap trash: [
  #   "~/Library/Application Scripts/2BUA8C4S2C.com.1password*",
  #   "~/Library/Application Scripts/com.1password.1password-launcher",
  #   "~/Library/Application Support/1Password",
  #   "~/Library/Application Support/Arc/User Data/NativeMessagingHosts/com.1password.1password.json",
  #   "~/Library/Application Support/CrashReporter/1Password*",
  #   "~/Library/Application Support/Google/Chrome Beta/NativeMessagingHosts/com.1password.1password.json",
  #   "~/Library/Application Support/Google/Chrome Canary/NativeMessagingHosts/com.1password.1password.json",
  #   "~/Library/Application Support/Google/Chrome Dev/NativeMessagingHosts/com.1password.1password.json",
  #   "~/Library/Application Support/Google/Chrome/NativeMessagingHosts/com.1password.1password.json",
  #   "~/Library/Application Support/Microsoft Edge Beta/NativeMessagingHosts/com.1password.1password.json",
  #   "~/Library/Application Support/Microsoft Edge Canary/NativeMessagingHosts/com.1password.1password.json",
  #   "~/Library/Application Support/Microsoft Edge Dev/NativeMessagingHosts/com.1password.1password.json",
  #   "~/Library/Application Support/Microsoft Edge/NativeMessagingHosts/com.1password.1password.json",
  #   "~/Library/Application Support/Mozilla/NativeMessagingHosts/com.1password.1password.json",
  #   "~/Library/Application Support/Vivaldi/NativeMessagingHosts/com.1password.1password.json",
  #   "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.1password.1password.sfl2",
  #   "~/Library/Containers/2BUA8C4S2C.com.1password.browser-helper",
  #   "~/Library/Containers/com.1password.1password*",
  #   "~/Library/Group Containers/2BUA8C4S2C.com.1password",
  #   "~/Library/Preferences/com.1password.1password.plist",
  #   "~/Library/Saved Application State/com.1password.1password.savedState",
  # ]
end
