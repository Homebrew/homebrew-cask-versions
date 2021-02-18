cask "arq5" do
  version "5.21"
  sha256 "bde36dee19b4e02c83b1aa10cdd2fdd5c4feccec4671b865d13a541b16fc387b"

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  name "Arq"
  homepage "https://www.arqbackup.com/"

  auto_updates true
  conflicts_with cask: "arq"

  app "Arq.app"
end
