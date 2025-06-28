#!/bin/bash
# build_stdlib.sh

echo "Construindo biblioteca padrão..."

# Compilar módulos da biblioteca padrão
for modulo in sistema-padrao/src/sistema/*/*.pr; do
    echo "Compilando $modulo..."
    cargo run --bin compilador -- "$modulo" --target=bytecode
done

echo "Biblioteca padrão construída!"