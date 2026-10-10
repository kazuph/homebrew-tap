class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.27"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.27/herdr-macos-aarch64"
      sha256 "382e49f5bd85edfeb0206b2d50b1af45c10e2b4eeab937bf41fff3edf0a739a4"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.27/herdr-macos-x86_64"
      sha256 "908953ca0b47ad0b509fc4901ba097ca33428e492600a7b0b0bfd674f6a80a45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.27/herdr-linux-aarch64"
      sha256 "c08a8572e39c121933c23f9868f2c6efd1ecc09ec358ec34d140ec812f96157d"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.27/herdr-linux-x86_64"
      sha256 "fb853b3593623f8531e8c2e5667198825ce1504421f182b4d69d43f9c5416067"
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
