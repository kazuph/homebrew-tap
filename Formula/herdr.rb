class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.6"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.6/herdr-macos-aarch64"
      sha256 "4a61cf7bf299a8b774549ced74d983ef51f3bbcfe6164a39ee1030b406c6949a"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.6/herdr-macos-x86_64"
      sha256 "d62c4be1c265caa53633e1e2fb841e25ac74b232585d67ddb000ea4c28ccf059"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.6/herdr-linux-aarch64"
      sha256 "dab0e51641432d407d9b4d801959307e8cc536a5e0b5b49e198faff73aee88d5"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.6/herdr-linux-x86_64"
      sha256 "f854afc23c45d965bdd552423742fd98e6550139f117287801360bfd0ed540ea"
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
