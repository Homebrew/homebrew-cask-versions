cask "1password-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version :latest
  sha256 :no_check

  url do
    require "open-uri"
    base_url = "https://app-updates.agilebits.com/product_history/OPM8"
    latest_build_info =
      URI(base_url).open do |io|
        match =
          io
          .read
          .scan(
            %r{<a href="[^"]*/1Password-(\d+\.\d+\.\d+-\d+\.NIGHTLY)-\$(?:ARCH)\.zip"}i,
          )
          .flatten
          .first
        next if match.nil?

        match
      end
    next if latest_build_info.nil?

    version = latest_build_info.match(/(\d+\.\d+\.\d+-\d+\.NIGHTLY)/)[0]
    "https://downloads.1password.com/mac/1Password-#{version}-#{arch}.zip"
  end
  name "1Password Nightly"
  desc "Password manager that keeps all passwords secure behind one password"
  homepage "https://1password.com/"

  conflicts_with cask: %w[1password homebrew/cask-versions/1password-beta]
  depends_on macos: ">= :high_sierra"

  app "1Password.app"

  zap trash: [
    "~/Library/Application Scripts/2BUA8C4S2C.com.1password",
    "~/Library/Application Scripts/2BUA8C4S2C.com.1password.browser-helper",
    "~/Library/Application Scripts/com.1password.1password-launcher",
    "~/Library/Application Scripts/com.1password.browser-support",
    "~/Library/Application Support/1Password",
    "~/Library/Application Support/CrashReporter/1Password*.plist",
    "~/Library/Containers/2BUA8C4S2C.com.1password.browser-helper",
    "~/Library/Containers/com.1password.1password-launcher",
    "~/Library/Containers/com.1password.browser-support",
    "~/Library/Group Containers/*.com.1password",
    "~/Library/Group Containers/*.com.agilebits",
    "~/Library/Logs/DiagnosticReports/1Password*",
    "~/Library/Preferences/*1password.plist",
    "~/Library/Saved Application State/com.1password.1password.savedState",
  ]
end
