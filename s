on: push
name: 🚀 Deploy to ALOFT on push
jobs:
  web-deploy:
    name: 🎉 Deploy
    runs-on: ubuntu-latest
    steps:
      - name: 🚚 Get latest code
        uses: actions/checkout@v4
      - name: 📂 Sync files
        uses: SamKirkland/FTP-Deploy-Action@v4.3.5
        with:
          server: ftp.aloft-server.com  # Replace with ALOFT’s FTP host
          username: ${{ secrets.FTP_USERNAME }}
          password: ${{ secrets.FTP_PASSWORD }}
          server-dir: public_html/  # Replace with ALOFT’s target directory
          protocol: ftps  # Use ftps or sftp if required by ALOFT
          port: 21  # Replace with ALOFT’s port if different
