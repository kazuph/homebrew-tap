class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.55"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.55/ikesu-darwin-arm64"
      sha256 "6edce3b0e81681db7980547772f7dc6dcb963918506d175d51105e5d05abb3bd"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.55/ikesu-darwin-amd64"
      sha256 "eb5aeed4c181c7d4395adbb0245f8b6db79daad1e2948a555553dcd6bdeaf4e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.55/ikesu-linux-arm64"
      sha256 "2006450d65188b10bfab27453f8973da41ec27bf828cb656a9fb34887d46489d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.55/ikesu-linux-amd64"
      sha256 "146205b7c760fc76e82a80fb99f079c978dcc2cc1178cbef65aebbda503363d3"
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
