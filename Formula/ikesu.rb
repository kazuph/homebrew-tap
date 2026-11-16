class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.156"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.156/ikesu-darwin-arm64"
      sha256 "836765bfed3433a123a7ade757cbcca50a431ced6f28e3807d5f01f7eb1522c9"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.156/ikesu-darwin-amd64"
      sha256 "2f652c51e9929ec2f07f90c842bc97035c78255e4979092782d6de29c9c10b5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.156/ikesu-linux-arm64"
      sha256 "3fe7df82c38219daed6a7032d392f3f1d869111343c9783aff05ee18d59e5884"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.156/ikesu-linux-amd64"
      sha256 "c81cc68ef3db54fbce8abd2a508c60bef1a4f2b6d199bbe109166c51fa1e9cf9"
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
