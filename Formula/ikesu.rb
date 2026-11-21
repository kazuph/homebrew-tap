class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.179"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.179/ikesu-darwin-arm64"
      sha256 "7ac9750007f2bc3ff4ada9e4d876c3201baadcc32b7463b4f01aa1094b3d9f23"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.179/ikesu-darwin-amd64"
      sha256 "29a8d50a50474ec844cca15354690136a886a094733681d09feee79f31207dc4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.179/ikesu-linux-arm64"
      sha256 "ff2b457d7ebbfdfa5753f2324a22daef2216a37d6dc772d7c01f83b2e6fd582d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.179/ikesu-linux-amd64"
      sha256 "af0275f2df7dbbcfb10536b4f5f9de0bc5b3ed781139741c659d3c73e47444b9"
    end
  end

  def install
    bin.install stable.url.split("/").last => "ikesu"
    chmod 0755, bin/"ikesu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ikesu --version")
  end
end
