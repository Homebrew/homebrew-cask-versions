cask "1password-cli-beta" do
  version "2.8.0-beta.04"
  sha256 "478fd45e4cd2f3cc01633d1e48b02ed4e9978c88bf1e6c8b16bbd8a5aa7608b9"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_apple_universal_v#{version}.pkg",
      verified: "https://cache.agilebits.com/dist/1P/op2/pkg/"
  name "1Password CLI"
  desc "Command-line helper for the 1Password password manager"
  homepage "https://developer.1password.com/docs/cli"

  livecheck do
    url "https://app-updates.agilebits.com/product_history/CLI2"
    regex(%r{href=.*?/op_apple_universal[._-]v?(\d+(?:\.\d+)+-beta\.\d+)\.pkg}i)
  end

  conflicts_with cask: "1password-cli"

  pkg "op_apple_universal_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.config/op"
end
