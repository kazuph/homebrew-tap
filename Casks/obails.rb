# frozen_string_literal: true

cask "obails" do
  version "1.1.2"
  sha256 "8969f27ddb6ca789941d64a467b71b7416af38adda36393cb20c64da0a662d44"

  url "https://github.com/kazuph/obails/releases/download/v#{version}/obails-#{version}-macos-arm64.zip"
  name "Obails"
  desc "Native Markdown note-taking app with split panes and live preview"
  homepage "https://github.com/kazuph/obails"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "obails.app"
end
