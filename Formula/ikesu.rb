class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.117"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.117/ikesu-darwin-arm64"
      sha256 "87ed03f128c41cfa2fe7593244004045fc65e5fea32ca11beda8b91fd12c5735"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.117/ikesu-darwin-amd64"
      sha256 "1a3fe37c6ecc0ecf51880457d6cd7b34deedc85ddaf2d0d5ef42f5170b03069e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.117/ikesu-linux-arm64"
      sha256 "73e097726bae0832af37a4074aed8899b3b3d606125df4558d491f2af172391d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.117/ikesu-linux-amd64"
      sha256 "4ef347a46f822858b18a1d95ef058e324c2e6746a9a983ee64bdccb0decb1240"
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
