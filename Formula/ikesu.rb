class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.21/ikesu-darwin-arm64"
      sha256 "468ba7988b31b19105e2a063418909110b1921e71fc49b699281e54772879a0e"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.21/ikesu-darwin-amd64"
      sha256 "94060d5790626511314a59871a599dc1162a39c4b37da78bf51aa621bc21ab79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.21/ikesu-linux-arm64"
      sha256 "6a609f137c4da69f11e7483c0b4da94dc14401cc4959d4fadda432685d07b8b7"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.21/ikesu-linux-amd64"
      sha256 "4e72e9f23289d20ccba4819d953475885d7a81b219207f5982bd955314e53ee8"
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
