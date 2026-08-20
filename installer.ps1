if (Get-Command python -ErrorAction SilentlyContinue) {
    Write-Host "Mise à jour de pip..." -ForegroundColor Green
    python -m pip install --upgrade pip
    
    # 🟢 Liste de vos 33 packages Python
    $packages = @(
        "auto-py-to-exe",
        "bcrypt",
        "beautifulsoup4",
        "browser-cookie3",
        "colorama",
        "cryptography",
        "customtkinter",
        "deep-translator",
        "discord",
        "dnspython",
        "exifread",
        "GPUtil",
        "instaloader",
        "keyboard",
        "opencv-python",
        "phonenumbers",
        "piexif",
        "pillow",
        "psutil",
        "pyautogui",
        "pycryptodome",
        "pyinstaller",
        "pyqt5",
        "pyqtwebengine",
        "pywin32",
        "pyzipper",
        "rarfile",
        "requests",
        "screeninfo",
        "selenium",
        "setuptools",
        "urllib3",
        "whois"
    )

    Write-Host "Installation des packages en cours..." -ForegroundColor Green
    python -m pip install $packages
    Write-Host "⚠️ Si l'installation de pywin32 bloque, exécutez PowerShell en administrateur." -ForegroundColor Yellow
} else {
    Write-Error "Python n'est pas installé sur cette machine."
}
