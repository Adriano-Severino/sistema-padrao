#!/bin/bash
# Script para compilar a biblioteca padrão

echo "=== Compilando Biblioteca Padrão Sistema ==="

# Diretório do compilador
COMPILADOR="../instalacao/bin/compilador"
DESTINO="../instalacao/lib/sistema"

# Criar diretório de destino
mkdir -p "$DESTINO"

echo "🔧 Compilando módulos..."

# Compilar cada módulo
for modulo in src/sistema/*/; do
    if [ -d "$modulo" ]; then
        nome_modulo=$(basename "$modulo")
        echo "  → Compilando módulo: $nome_modulo"
        
        # Compilar todos os arquivos .pr do módulo
        for arquivo in "$modulo"*.pr; do
            if [ -f "$arquivo" ]; then
                nome_arquivo=$(basename "$arquivo" .pr)
                echo "    • $nome_arquivo.pr"
                
                # Compilar para bytecode
                $COMPILADOR "$arquivo" --target=bytecode --output="$DESTINO/${nome_modulo}_${nome_arquivo}.pbc"
            fi
        done
        
        # Criar bytecode consolidado do módulo
        echo "    ✓ Consolidando módulo $nome_modulo"
        cat "$DESTINO"/${nome_modulo}_*.pbc > "$DESTINO/${nome_modulo}.pbc"
        rm "$DESTINO"/${nome_modulo}_*.pbc
    fi
done

# Criar arquivo principal da biblioteca
echo "📦 Criando biblioteca consolidada..."
echo "# Biblioteca Padrão Sistema - v1.0.0" > "$DESTINO/sistema.pbc"
echo "# Gerado automaticamente em $(date)" >> "$DESTINO/sistema.pbc"
echo "" >> "$DESTINO/sistema.pbc"

# Concatenar todos os módulos
for arquivo in "$DESTINO"/*.pbc; do
    if [ "$arquivo" != "$DESTINO/sistema.pbc" ]; then
        echo "# Módulo: $(basename "$arquivo" .pbc)" >> "$DESTINO/sistema.pbc"
        cat "$arquivo" >> "$DESTINO/sistema.pbc"
        echo "" >> "$DESTINO/sistema.pbc"
    fi
done

echo "✅ Biblioteca padrão compilada com sucesso!"
echo "📁 Localização: $DESTINO/"
