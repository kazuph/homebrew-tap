class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.38"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.38/herdr-macos-aarch64"
      sha256 "1c2f4f08fa494034ee8686ffacd5ed7c205a720d605d17d74434f102dc037ab3"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.38/herdr-macos-x86_64"
      sha256 "2c3d4e820bd31a7b5bbcfc8acdf34a93b899d62a958bc2706cabbf18c02aca3a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.38/herdr-linux-aarch64"
      sha256 "9632b5995459432e53d249e7175a4c699d5f7cff769ce4ff01d231eddbb8b814"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.38/herdr-linux-x86_64"
      sha256 "74ae805b5d0b40f5f04ca5c3021ba40030e97164feabcfe9c7939be1e2e4883e"
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
