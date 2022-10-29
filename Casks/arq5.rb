cask "arq5" do
  version "5.22"
  sha256 "9aaa28e5d20155865d6d5ed510a0bf92f34954ff86b5d9830b97d08efb4584c9"

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  name "Arq"
  desc "Multi-cloud backup application"
  homepage "https://www.arqbackup.com/"

  auto_updates true
  conflicts_with cask: "arq"

  app "Arq.app"

  caveats do
    discontinued
  end
end
