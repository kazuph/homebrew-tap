class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.3"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.3/herdr-macos-aarch64"
      sha256 "55375e16d20b5796f30a430a1188c50bd8e9fe8dd373d12bc34f6c66ffdb8700"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.3/herdr-macos-x86_64"
      sha256 "c2270f3e7ac0633f2d452fbde1449a677d78bed2247fcbe309de97e4c78b7164"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.3/herdr-linux-aarch64"
      sha256 "1d25781cb81fd764642632c0336f08828bb7f5947a01187fc77709e7439eea59"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.3/herdr-linux-x86_64"
      sha256 "a2ada89a09587c46f43030e813fd7cb02b49ea2447cc1dd59143b951591da5b7"
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
