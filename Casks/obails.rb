# frozen_string_literal: true

cask "obails" do
  version "1.1.4"
  sha256 "1ff98e69b47adb2c00142bd0ab36d7974fbf942386bd871f74787bf110fcef80"

  url "https://github.com/kazuph/obails/releases/download/v#{version}/obails-#{version}-macos-arm64.zip"
  name "Obails"
  desc "Native Markdown note-taking app with split panes and live preview"
  homepage "https://github.com/kazuph/obails"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "obails.app"
end
