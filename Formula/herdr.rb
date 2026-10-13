class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.35"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.35/herdr-macos-aarch64"
      sha256 "c5f19617e99a9aa2a76b5f511daf3f0b5c0d79349e4fd26373f5c7c29b015f48"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.35/herdr-macos-x86_64"
      sha256 "39c0e983e189ad0ae291a992db645443011740167fbf0fdae6bdb20cdf598458"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.35/herdr-linux-aarch64"
      sha256 "d0f1eaa98af62765115627457e2c6433651db43364162c7c53aa5b6c7b847f54"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.35/herdr-linux-x86_64"
      sha256 "c381e288a2082fcfd99148d7f6f9a56c5145759c87f06617b5d7b3a3652a3ad3"
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
