class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.203"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.203/ikesu-darwin-arm64"
      sha256 "138485ed334b67bbefe9137c0eb3fe0122a4b584dfe9326ef2648cb4d7a7fc28"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.203/ikesu-darwin-amd64"
      sha256 "aa8ea31eb129f7762ab110bb4b9d805549072d46ecf4e4e2f49b7a43d8a33c33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.203/ikesu-linux-arm64"
      sha256 "ec2dbad28fe2a1a018c1d9e79c5f8e7c49f740307a361663f099910338a716e0"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.203/ikesu-linux-amd64"
      sha256 "d04259527ee113a9d77afaa6c0c3e7cda34d3442535206f6485508830f04b8ee"
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
