class Gh0stcli < Formula
  desc "Local gh0stcloud client and MCP adapter"
  homepage "https://gitlab.gh0stservice.com/gh0stlab/gh0stcli"
  version "0.1.6"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.6/gh0stcli_0.1.6_darwin_arm64.tar.gz"
      sha256 "98f89a0a580dff535c43fc0329664d9944a26da0d80d1488b52394a6a59f0145"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.6/gh0stcli_0.1.6_darwin_amd64.tar.gz"
      sha256 "d6da709321b6e165e96b6cac2bd7039b0484ec268e53451973570cc7285508f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.6/gh0stcli_0.1.6_linux_arm64.tar.gz"
      sha256 "20f6fcb6155e5806e72c2d6050117a78bf3bc70e141a4cfcd00301829cdedaeb"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.6/gh0stcli_0.1.6_linux_amd64.tar.gz"
      sha256 "305868146d49eb545ada78a4b0d970f41e30e7bb4191abbbec5d62408f59b33c"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
