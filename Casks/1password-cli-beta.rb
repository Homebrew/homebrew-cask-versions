cask "1password-cli-beta" do
  version "2.8.0-beta.03"
  sha256 "73662a5755b6aa16e231c9d7128fc72b9e23a42cf78b2aa461b54b45ae1547d5"

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
