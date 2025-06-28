#!/bin/bash
# desenvolvimento.sh - Para facilitar o desenvolvimento

case "$1" in
    "compilar-lib")
        echo "🔧 Recompilando biblioteca padrão..."
        cd sistema-padrao && ./construir.sh
        ;;
    "instalar")
        echo "🔧 Reinstalando compilador..."
        ./ferramentas/instalar.sh
        ;;
    "teste")
        echo "🧪 Executando testes..."
        cd projetos/meu-app && compilador construir && compilador executar
        ;;
    "limpar")
        echo "🧹 Limpando builds..."
        find . -name "*.pbc" -delete
        find . -name "construir" -type d -exec rm -rf {} +
        ;;
    *)
        echo "Uso: $0 {compilar-lib|instalar|teste|limpar}"
        ;;
esac
