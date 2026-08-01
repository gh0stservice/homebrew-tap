class Gh0stcli < Formula
  desc "Local gh0stcloud client and MCP adapter"
  homepage "https://gitlab.gh0stservice.com/gh0stlab/gh0stcli"
  version "0.1.7"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.7/gh0stcli_0.1.7_darwin_arm64.tar.gz"
      sha256 "c8d3988aaff8facfc6398a308063e987e5e5a2854f1667adef4972c6129bd539"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.7/gh0stcli_0.1.7_darwin_amd64.tar.gz"
      sha256 "15985ab3c8deb6689a33744f6a1d1e7e74882d4198a1af2be7d173f7cf8d0fa9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.7/gh0stcli_0.1.7_linux_arm64.tar.gz"
      sha256 "f778a63f62aa55793331c2b11eb79966b52b4b33806b6c7cbd861aad7909e255"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.7/gh0stcli_0.1.7_linux_amd64.tar.gz"
      sha256 "681d3bc5dc177cbf861cef6f0d0a7d89e1e33e70b3a0e68dc7ffb6cc3cf44751"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
