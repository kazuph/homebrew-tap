class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.132"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.132/ikesu-darwin-arm64"
      sha256 "00e43fddc2d15de45a00a9649d5f67dfab04d4b5cfadf7f1643cda76b0ad83d4"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.132/ikesu-darwin-amd64"
      sha256 "e766497a1366a5c647f54ed17be58fc8470ae79eaf8d2a7cc01f7ce77c3edd6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.132/ikesu-linux-arm64"
      sha256 "364b4995f57d0266b8f3d746e673dd5f60476281c09ff6367bc34828f402b3fe"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.132/ikesu-linux-amd64"
      sha256 "c04ce0bef127830449e818b3dc83b7d48d8c91549b6b722dcef15c4b9b40ae88"
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
