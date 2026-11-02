class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.65"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.65/ikesu-darwin-arm64"
      sha256 "b182cbd9955b6944646247b1d474f5654dd3d0758eb081e51dba04bcf34362b1"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.65/ikesu-darwin-amd64"
      sha256 "1dfd550582a39313f748c28419aad0bf9b3d4f50f0d981df2254a4ae4ad1ecaa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.65/ikesu-linux-arm64"
      sha256 "cc181dfe85a88e1921e3d1afc4acd881020d4715c0354eeb5401273f3f2f7283"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.65/ikesu-linux-amd64"
      sha256 "326cd36a9303fac330e57dd34cb7973bfd4f18d14dfd2078e014c210a02f050a"
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
