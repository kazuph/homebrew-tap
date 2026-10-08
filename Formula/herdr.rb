class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.19"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.19/herdr-macos-aarch64"
      sha256 "f6dc5f2dae3dcbcb9d71f0c101f803d5d281a6bdea27a18195d46abbab4e88ae"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.19/herdr-macos-x86_64"
      sha256 "f446f41010fc931867e48b9ede36290abe234e01097541188cf8a23713f236a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.19/herdr-linux-aarch64"
      sha256 "99999315660d6c75d2da99c9c9141cb2364b7178565610cda15634d3e9d7d4ae"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.19/herdr-linux-x86_64"
      sha256 "16caff0db65275cf27fb346ec966633f6d3dcfb94e0ccb54c2f0b3f00099a49f"
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
