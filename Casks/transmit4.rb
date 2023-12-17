cask "transmit4" do
  version "4.4.13"
  sha256 "0d7095351378aa3c581de064f99fedecbfac683377048a4c0457976f5ce79f3b"

  url "https://download.panic.com/transmit/Transmit%20#{version.major}/Transmit%20#{version}.zip"
  name "Transmit"
  desc "File transfer application"
  homepage "https://panic.com/transmit/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Transmit.app"

  zap trash: [
    "~/Library/Preferences/com.panic.Transmit.plist",
    "~/Library/Application Support/Transmit",
  ]
end
