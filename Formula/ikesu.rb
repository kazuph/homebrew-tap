class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.104"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.104/ikesu-darwin-arm64"
      sha256 "5f9217c15aecd9543be9cdf752319042ace8ffb630b923b0c26c7b8a7ce64b23"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.104/ikesu-darwin-amd64"
      sha256 "7976b36c6629a0760b9c2544551cd47bcf24fc7ab9c27ff2276dccd1ae2f62cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.104/ikesu-linux-arm64"
      sha256 "4f81937b8c432f12d1527a95320ee0ac3b9509e341213c6975fab72edb010869"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.104/ikesu-linux-amd64"
      sha256 "af96d225db2d0c7e45265add6c207b466a797f1f92a15a79a511525a4cb55d4e"
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
