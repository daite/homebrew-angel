class DownloadVideo < Formula
    desc "A script to download videos from URLs"
    homepage "https://github.com/daite/shell"
    url "https://github.com/daite/shell/raw/main/code/download_video.sh"
    sha256 "eee97955d90cfd6264464727ff6090924641b77a712bc6a0b67c190d3a8d2d81"  # Calculate the SHA256 checksum of the script file
  
    def install
      bin.install "download_video.sh" => "download_video"
      chmod 0755, bin/"download_video"
    end
  
    test do
      # Basic test to ensure the script runs without errors
      assert_match "Usage:", shell_output("#{bin}/download_video --help 2>&1")
    end
  end
  