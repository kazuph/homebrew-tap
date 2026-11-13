class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.144"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.144/ikesu-darwin-arm64"
      sha256 "1648b7d5cb024b01cf1b777329e85ca10d4c19f796d0412978f96ff3163d357b"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.144/ikesu-darwin-amd64"
      sha256 "114affd7bf476c4e943a3c73dc92e1080428327145e21ec5a112682d97bd29ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.144/ikesu-linux-arm64"
      sha256 "cd68e90f6628f79bcf83b632e47b047ca7888e0e177d4072d55e7e453cc2b569"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.144/ikesu-linux-amd64"
      sha256 "81996c6861f35feb2761b87fcd4f9db0293891873ab9dae9019a576925d56074"
    end
  end

  def install
    bin.install stable.url.split("/").last => "ikesu"
    chmod 0755, bin/"ikesu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ikesu --version")
  end
end
