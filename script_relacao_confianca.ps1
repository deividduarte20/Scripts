# Caso nunca tenha executado script powershell execute esse primeiro comando
# Set-ExecutionPolicy Unrestricted

# Esse comando refaz a relação de confiança sem precisar reiniciar
Test-ComputerSecureChannel -Repair -Credential *