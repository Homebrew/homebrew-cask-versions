cask "synergy-beta" do
  version "2.0.12,b1824-e5daaeda"
  sha256 "d44ff87da7817182fd4a19f5b8a638fadb3fdf51822f4dc5a260856cb132e820"

  url "https://binaries.symless.com/v#{version.before_comma}/Synergy_v#{version.before_comma}-beta_#{version.after_comma}.dmg"
  name "Synergy"
  homepage "https://symless.com/synergy"

  app "Synergy.app"
end
