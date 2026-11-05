class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.81"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.81/ikesu-darwin-arm64"
      sha256 "4404e5c307b18dd56f7041ba95f60c4d85b99edc9c2e47084b76be25cae4c009"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.81/ikesu-darwin-amd64"
      sha256 "6bde8c85359a3a31ef099c8d0df867e11f318f57c97f37bd20489990cd86ff56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.81/ikesu-linux-arm64"
      sha256 "7eb53d1d06ac5547fbcfc7651af7909d41c4d06744d4ca372662add48598eec3"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.81/ikesu-linux-amd64"
      sha256 "97913954b8f9468172b93044e88d52a0e104d11bb2bc93064f22a43aa968b850"
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
