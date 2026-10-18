class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.61"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.61/herdr-macos-aarch64"
      sha256 "f52cf2a5650077c52b42616cdff16c900d9e12135d31c53af0e9358c45b14358"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.61/herdr-macos-x86_64"
      sha256 "fa73aaf4e30c42c712a30bf74aee20e9110e298038cfc1f403a9be4700174790"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.61/herdr-linux-aarch64"
      sha256 "729180d9fa4944cae0133917e6d44f2c161066ee99964e4cac820e1cda1c177d"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.61/herdr-linux-x86_64"
      sha256 "756bcbd071af0ba94eab76c7a2a58a227ad4f56c83363c7f8ad32b91e1c5c4cf"
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
