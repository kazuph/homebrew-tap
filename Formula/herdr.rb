class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.23"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.23/herdr-macos-aarch64"
      sha256 "f308ab6c7f792ebd3baaa61bd7acff5efec2a5b7478c9cf2b825e1cadea1e2f8"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.23/herdr-macos-x86_64"
      sha256 "90126dcd156dacc0b6c7a4584bffc89112633baef1dceff30ccdcee97a482801"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.23/herdr-linux-aarch64"
      sha256 "b25e82e1ac333708b29f849d9c9f86c625fb4c31db7ff65a44acc3514f03b78f"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.23/herdr-linux-x86_64"
      sha256 "5a979d3ef3865d53d1b1f48a77c40ae83f8d6c49f72866912366946b57458bae"
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
