class Gh0stcli < Formula
  desc "Local gh0stcloud client and MCP adapter"
  homepage "https://gitlab.gh0stservice.com/gh0stlab/gh0stcli"
  version "0.1.1"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.1/gh0stcli_0.1.1_darwin_arm64.tar.gz"
      sha256 "9c60f6d80aa04b875e5a6608df68d89147b85dcff460a98386e664b43869f8b2"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.1/gh0stcli_0.1.1_darwin_amd64.tar.gz"
      sha256 "d6afee9ceebaf28d0b01772c2aba354f8dc25296cce63e72880d89918c6f9013"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.1/gh0stcli_0.1.1_linux_arm64.tar.gz"
      sha256 "64328e1eb002449fe126300193fc021158fa0750a3d813691f5d6a28159b96c5"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.1/gh0stcli_0.1.1_linux_amd64.tar.gz"
      sha256 "cc0b0569aff6b06bb492358517e234396041641c47ada8c9668fc321de9d6215"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
