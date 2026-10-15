class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.53"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.53/herdr-macos-aarch64"
      sha256 "b5ce26f029552a23ba2a309a185afd275450b28bc6a66780f420b188a1779bda"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.53/herdr-macos-x86_64"
      sha256 "1fcae41ae3806f4b31f621381bb49b24709e9be78af9eaeeb4739e685782418b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.53/herdr-linux-aarch64"
      sha256 "853f8dc049357203e61162792bad48124b9215be05af186ccc5f71a7587a6f90"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.53/herdr-linux-x86_64"
      sha256 "26d613fd0b31a7ee421b68f8dd3dd2d99bd45b8c8b21cd68a0cb672eb5edeb2d"
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
