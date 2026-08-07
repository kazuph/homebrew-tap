class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.1.4"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.4/herdr-macos-aarch64"
      sha256 "7250081b3364a6cad188b1fe4f319473ed9243e6e457624e6ae414231257979c"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.4/herdr-macos-x86_64"
      sha256 "0a420636df3131e4cf25b41e50b4af3cfd3752bf6c2879c9cfc0fcd550ee2689"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.4/herdr-linux-aarch64"
      sha256 "6abe0a88b117f49a35038ddee096a5b7d0a321bbcc30d2b615f4ea6c576e8834"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.4/herdr-linux-x86_64"
      sha256 "d6961f5b0524c8789f123c6b9338a51318edee452fd8ca5f13c0d3b534eaff4e"
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
