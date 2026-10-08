class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.15"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.15/herdr-macos-aarch64"
      sha256 "6558f860799c0e198832f9a2c7ba68c1a62429f3fbf2929c104fe76acaf0c116"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.15/herdr-macos-x86_64"
      sha256 "8843235ba82a1d2d96943d4b66473559df9927beec1c47493519d12824cc2ae8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.15/herdr-linux-aarch64"
      sha256 "e9d8fe7ae91a4ca84a40ca45f48609ef9c4b382bdd26893f039d2f4f9bc011eb"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.15/herdr-linux-x86_64"
      sha256 "a73c27f25559dd8277e21a1224414231d5d27d105cc83d18a0cf1fec2c8fd0e8"
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
