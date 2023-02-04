cask "wezterm-nightly" do
  version :latest
  sha256 :no_check

  url "https://github.com/wez/wezterm/releases/download/nightly/WezTerm-macos-nightly.zip",
      verified: "github.com/wez/wezterm/"
  name "WezTerm"
  desc "GPU-accelerated cross-platform terminal emulator and multiplexer"
  homepage "https://wezfurlong.org/wezterm/"

  conflicts_with cask: "wezterm"

  app "WezTerm.app"

  %w[
    wezterm
    wezterm-gui
    wezterm-mux-server
    strip-ansi-escapes
  ].each do |tool|
    binary "#{appdir}/WezTerm.app/Contents/MacOS/#{tool}"
  end

  preflight do
    # Move "WezTerm-macos-#{version}/WezTerm.app" out of the subfolder
    staged_subfolder = staged_path.glob(["WezTerm-*", "wezterm-*"]).first
    if staged_subfolder
      FileUtils.mv(staged_subfolder/"WezTerm.app", staged_path)
      FileUtils.rm_rf(staged_subfolder)
    end
  end

  zap trash: [
    "~/.config/wezterm/",
    "~/.wezterm.lua",
    "~/Library/Saved Application State/com.github.wez.wezterm.savedState",
  ]
end
