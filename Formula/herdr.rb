class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.7"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.7/herdr-macos-aarch64"
      sha256 "5be0c62f3850bd60dccbf98499d04d748458fb3bb5ea3c73e427a4c3b136fbd9"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.7/herdr-macos-x86_64"
      sha256 "b948fcfc4724d957377d5ed5757f0a6e1ba7b39988269790760145aa67945f6a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.7/herdr-linux-aarch64"
      sha256 "6eb324c5c272a8635cb279eb3d7c76091e72c42f6088f71c3bba50e6c2c8455d"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.7/herdr-linux-x86_64"
      sha256 "b24dc079e83c397e8fef0737be32663d9a77ed03cebb78718fdfa9da92858aa6"
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
