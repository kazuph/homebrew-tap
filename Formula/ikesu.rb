class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.129"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.129/ikesu-darwin-arm64"
      sha256 "359742ed5ef2e5dca0f49ee9fe174235aef4e61ef7591a9f97cf5a0599c2df59"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.129/ikesu-darwin-amd64"
      sha256 "5fb4a1c97caf4d10321a077dd1d101508a059dc2400d86216544cb90247c3777"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.129/ikesu-linux-arm64"
      sha256 "61bdcfe94d78e496f99d591c986dc37b16c5ed098d9932151ef0fed61cf2cb64"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.129/ikesu-linux-amd64"
      sha256 "eaa87d4b1468010557fe800b7912f99193f8d4321ef21fcf7f5d16f4209f35cc"
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
