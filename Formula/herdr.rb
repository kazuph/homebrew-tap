class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.30"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.30/herdr-macos-aarch64"
      sha256 "1ea981ac67fcbfbd86456064d7c2943ab1c42097e9abd0c38f61b50f86a4bad8"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.30/herdr-macos-x86_64"
      sha256 "e68e0a80fb9027998e94aa7b13a421a52fbd322ea21e789658ef318c55e312f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.30/herdr-linux-aarch64"
      sha256 "aff214901f5b0432fab74c65b7fc3aebbeabdad3bb74dfd1b7c6d86df0843933"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.30/herdr-linux-x86_64"
      sha256 "4e83d0d8b909b0368beed4317a6dcf516891e268b54568fd88aee258dd0b755d"
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
