cask "sagasu" do
  version "1.0.6"
  sha256 "f062a987627892b0733c3a88f7c90ad566ca20ba5dea91f52260ba56f05b5bc7"

  url "https://github.com/kazuph/sagasu/releases/download/v#{version}/Sagasu-#{version}.dmg"
  name "Sagasu"
  desc "Launcher for apps, files, notes, web routes, and clipboard history"
  homepage "https://github.com/kazuph/sagasu"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Sagasu.app"
end
