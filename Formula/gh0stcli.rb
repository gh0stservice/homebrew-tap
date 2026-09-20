class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.6.0"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.6.0/gh0stcli_0.6.0_darwin_arm64.tar.gz"
      sha256 "62ae628bcd01183fef106d9c02ed4c91272cd0237e33fbd23bbce71c8b51aef0"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.6.0/gh0stcli_0.6.0_darwin_amd64.tar.gz"
      sha256 "ed3278717a7cb741471965c5a670be906a4de58a864c68de98c0401afd6d3fe8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.6.0/gh0stcli_0.6.0_linux_arm64.tar.gz"
      sha256 "83e1f04f32e4c86dc98a3fceb9ba37c09acbecd7fd3f437e33c1d315c714547e"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.6.0/gh0stcli_0.6.0_linux_amd64.tar.gz"
      sha256 "41d4d748bf74b98495faa77c19568e964f76737ca3c7e701dd8b7aa0d0e3c185"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
