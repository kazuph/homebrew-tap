class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.102"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.102/ikesu-darwin-arm64"
      sha256 "9de6e27eb212b5d98f92b4640801c3961afba640502baae578a275d859c87b65"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.102/ikesu-darwin-amd64"
      sha256 "0e11e4c36b4ea6235767f42a1ae7b48ea41234ba63a0bcb766f571c0add88857"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.102/ikesu-linux-arm64"
      sha256 "dc985a5a301e0d1c61c34877424ee68964dadd59134c02bd30d2068ae9f31918"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.102/ikesu-linux-amd64"
      sha256 "332503483816c62b29238b05eb81fbafbb8af8e7a33e50133723ff3d50eade2c"
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
