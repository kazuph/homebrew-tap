class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.80"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.80/ikesu-darwin-arm64"
      sha256 "2dc6ef4f730ac83367651252182c9e13fa385eecdddd2fdab2e5e743d350ab4d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.80/ikesu-darwin-amd64"
      sha256 "7c69ff9041084ec938a6904b8cddb7501e92dcb6a03779c1d4dd3a702c23d5f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.80/ikesu-linux-arm64"
      sha256 "4e8e15617039786cf106f9510608d7f06d442efed3087fa08a7593c26594a462"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.80/ikesu-linux-amd64"
      sha256 "10a7ae0489a6430de76a8b16b3c57f23b94c14ddc6b8d45c38e2bb364cb347e9"
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
