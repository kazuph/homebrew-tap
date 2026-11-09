# frozen_string_literal: true

cask "obails" do
  version "1.1.5"
  sha256 "e57231d118d22b3810febdc87bec859a2c25f4dcf1d46b296c392da97540b68b"

  url "https://github.com/kazuph/obails/releases/download/v#{version}/obails-#{version}-macos-arm64.zip"
  name "Obails"
  desc "Native Markdown note-taking app with split panes and live preview"
  homepage "https://github.com/kazuph/obails"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "obails.app"
end
