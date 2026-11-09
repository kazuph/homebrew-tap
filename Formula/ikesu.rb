class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.119"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.119/ikesu-darwin-arm64"
      sha256 "ca4c8ee0d32da8986f721317f0aeb5250fe68a64ce5be81894e41fdfd56e87ea"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.119/ikesu-darwin-amd64"
      sha256 "0fbe56682caad3a2f0a11f6f513c1844896943539efa99ec0208ea7644a3f8fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.119/ikesu-linux-arm64"
      sha256 "0e1ab62784ad3128a3a7d979a44c664657c9ebc4072a583f7d3ee2e2fddaf059"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.119/ikesu-linux-amd64"
      sha256 "78ecd3417f08bfdb9db59fd2eb8c27fac12232cb3ce1a1b76b9bad919e61bdbc"
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
