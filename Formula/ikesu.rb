class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.204"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.204/ikesu-darwin-arm64"
      sha256 "481b61e70f3fd5fcf3c52af2af57418412737987f0ae7ee0166bdc422f83ec5f"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.204/ikesu-darwin-amd64"
      sha256 "ef26afcbd6cf0bbda1e9a309d7cd5b26b628fc5ffabe6b69afc2caf02dadc087"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.204/ikesu-linux-arm64"
      sha256 "e09f96e062fde79f5826f9c12a8553e10c18e479c97b1198e38d5b6a848dcf3a"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.204/ikesu-linux-amd64"
      sha256 "2e7091cebb99bbd60c7cb1d2481d34f2ade92bf5f807ef4d46650a0dba03aded"
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
