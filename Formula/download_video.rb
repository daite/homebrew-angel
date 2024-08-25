class DownloadVideo < Formula
    desc "A script to download videos from URLs"
    homepage "https://github.com/daite/shell"
    url "https://github.com/daite/shell/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "b1a4db5049943834ba7ecc30aba93928ca111d894eb8611ee803ef63a9d34a77"  # Calculate the SHA256 checksum of the script file
  
    def install
        bin.install "shell-0.1.0/code/download_video.sh" => "download_video"
        chmod 0755, bin/"download_video"
      end
    
      test do
        # Basic test to ensure the script runs without errors
        assert_match "Usage:", shell_output("#{bin}/download_video --help 2>&1")
      end
end
  
  