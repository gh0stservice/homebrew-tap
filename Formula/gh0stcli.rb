class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.2.0"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.2.0/gh0stcli_0.2.0_darwin_arm64.tar.gz"
      sha256 "33a3c1fb3c0e424f9e0865ecd2084feb743a96c2f10daddccadc83fe39365d44"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.2.0/gh0stcli_0.2.0_darwin_amd64.tar.gz"
      sha256 "37c601a598e3161ec40bd12f904695af43c779166d465952af2cf58ee215ae1b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.2.0/gh0stcli_0.2.0_linux_arm64.tar.gz"
      sha256 "dfd522e8aa774a5cf35a6b9196449a63d1b9c82014047ecf32d1e77985a2f733"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.2.0/gh0stcli_0.2.0_linux_amd64.tar.gz"
      sha256 "e98da70107b82b4043fc2ae66eb672445fabc09d8a026424004a06304f592596"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
