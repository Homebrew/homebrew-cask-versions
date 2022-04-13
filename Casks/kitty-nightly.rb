cask "kitty-nightly" do
  version :latest
  sha256 :no_check

  url "https://github.com/kovidgoyal/kitty/releases/download/nightly/kitty-nightly.dmg"
  name "kitty-nightly"
  desc "GPU-based terminal emulator"
  homepage "https://github.com/kovidgoyal/kitty"

  depends_on macos: ">= :sierra"

  app "kitty.app", target: "kitty nightly.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/kitty.wrapper.sh"
  binary shimscript, target: "kitty-nightly"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/kitty nightly.app/Contents/MacOS/kitty' "$@"
    EOS
  end

  zap trash: [
    "~/.config/kitty",
    "~/Library/Caches/kitty",
    "~/Library/Preferences/kitty",
    "~/Library/Preferences/net.kovidgoyal.kitty.plist",
    "~/Library/Saved Application State/net.kovidgoyal.kitty.savedState",
  ]
end
