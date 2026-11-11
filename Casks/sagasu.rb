cask "sagasu" do
  version "1.0.7"
  sha256 "b8c12019012c7e3122389d3ab79fb16cd999689f2b618bef6181fa7721834e8c"

  url "https://github.com/kazuph/sagasu/releases/download/v#{version}/Sagasu-#{version}.dmg"
  name "Sagasu"
  desc "Launcher for apps, files, notes, web routes, and clipboard history"
  homepage "https://github.com/kazuph/sagasu"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Sagasu.app"
end
