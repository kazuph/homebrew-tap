class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.40"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.40/herdr-macos-aarch64"
      sha256 "05b52d08731fe160dbab39b414aee8f9c7ac82e9a8142b2d9ce86a66dd802a3a"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.40/herdr-macos-x86_64"
      sha256 "0ab5975e400e25416d435cd5b650eb7a49cd02d1aea1814f7bf07d22a3ad31e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.40/herdr-linux-aarch64"
      sha256 "14d7abc4435a91cb656cbeacbfa8a591b67aebf4c77d0b95efb8cc6c68ac3083"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.40/herdr-linux-x86_64"
      sha256 "242b7e9aea478d762e44bdde61652416f267f18af7113a0ba59954ff2cc62542"
    end
  end

  def install
    artifact = Dir["herdr-*"].first
    chmod 0755, artifact
    bin.install artifact => "herdr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/herdr --version")
  end
end
