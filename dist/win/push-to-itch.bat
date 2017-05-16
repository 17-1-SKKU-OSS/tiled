secure-file\tools\secure-file -decrypt dist\win\butler_creds.enc -secret %my_secret% -out butler_creds
curl -fsS -o butler.exe https://dl.itch.ovh/butler/windows-amd64/head/butler.exe
butler.exe -i butler_creds push --userversion=%TILED_VERSION% install-root thorbjorn/tiled:windows-64bit-snapshot
