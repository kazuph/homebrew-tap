class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.120"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.120/ikesu-darwin-arm64"
      sha256 "523cad42b94324990cff8ca1eef3c4769d8f479c88d385f8a7c27d159333b5e2"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.120/ikesu-darwin-amd64"
      sha256 "0dbfdf3e06f4960b3e83bf14aa3ba43f55806796aa2e17fd7a29ba92444d388b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.120/ikesu-linux-arm64"
      sha256 "2335427a07b90bc58336c677579a7160688e526c1eafba43eb87680a81af4085"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.120/ikesu-linux-amd64"
      sha256 "6b3577c863357689c9398c629120273775a4d1bf3c3001d11944b90f2c3fd007"
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
