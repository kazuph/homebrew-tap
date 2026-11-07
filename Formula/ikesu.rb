class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.94"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.94/ikesu-darwin-arm64"
      sha256 "60e9289a7a59602dc573649421887b4bf01f850697348cc3d726254ac141ca78"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.94/ikesu-darwin-amd64"
      sha256 "cc0d3051c0217d75c8c71aed193a36fbc58046e70412ad10db6aaf2cd73e9a2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.94/ikesu-linux-arm64"
      sha256 "82c25ecedaca1595743e80d7585ab8ba723c156ded2b7a52b5e5a98de7c5534c"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.94/ikesu-linux-amd64"
      sha256 "3f5f17bc581b9942bee3b6753d4944ea85d45d212e09d26876833bcb50e9af22"
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
