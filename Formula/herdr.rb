class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.31"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.31/herdr-macos-aarch64"
      sha256 "64ca93863baf6aa0ff702bbdab14f8a37a70c5fcd7626eaa0148c48aa4c8618d"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.31/herdr-macos-x86_64"
      sha256 "39d4f022206e4e45b6fcd08d497be0653e4f92979d1f44cf3dff61874efc47da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.31/herdr-linux-aarch64"
      sha256 "673f790a6b986a317c7c8b695b299b6cc6fe8c60bcd21dc05031c49dc3056982"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.31/herdr-linux-x86_64"
      sha256 "9b29fba622c0b1510879a8d0b03d8c9f0dc66ae43777dc549b1d790969822068"
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
