# frozen_string_literal: true

cask "obails" do
  version "1.1.6"
  sha256 "995addaee775b86e62447ea567ac217fd1eeb63a8c2afb3d0e5e97f65276e9d1"

  url "https://github.com/kazuph/obails/releases/download/v#{version}/obails-#{version}-macos-arm64.zip"
  name "Obails"
  desc "Native Markdown note-taking app with split panes and live preview"
  homepage "https://github.com/kazuph/obails"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "obails.app"
end
