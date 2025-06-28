#!/bin/bash
# Script para compilar e instalar o compilador

echo "=== Instalando Compilador da Linguagem Portuguesa ==="

# Compilar o compilador em Rust
cd compilador
echo "🔧 Compilando compilador..."
cargo build --release

if [ $? -ne 0 ]; then
    echo "❌ Erro ao compilar o compilador!"
    exit 1
fi

# Criar estrutura de instalação
cd ..
echo "📁 Criando estrutura de instalação..."
mkdir -p instalacao/{bin,lib,templates}

# Copiar executável
echo "📋 Copiando executável..."
cp compilador/target/release/compilador instalacao/bin/
chmod +x instalacao/bin/compilador

# Criar templates
echo "📄 Criando templates..."

# Template Console
mkdir -p instalacao/templates/console
cat > instalacao/templates/console/main.pr << 'EOF'
usando Sistema.IO;
usando Sistema.Texto;

publico estática classe Principal 
{
    publico estática vazio Main() 
    {
        imprima("Olá Mundo!");
        
        var nome = "Usuário";
        imprima($"Bem-vindo, {nome}!");
        
        // Exemplo usando biblioteca padrão
        var arquivo = "dados.txt";
        se (Arquivo.Existe(arquivo)) 
        {
            var conteudo = Arquivo.LerTexto(arquivo);
            imprima($"Conteúdo: {conteudo}");
        } 
        senão 
        {
            Arquivo.EscreverTexto(arquivo, "Dados iniciais");
            imprima("Arquivo criado!");
        }
    }
}
EOF

# Template API
mkdir -p instalacao/templates/api
cat > instalacao/templates/api/main.pr << 'EOF'
usando Sistema.Rede;
usando Sistema.Texto;
usando Sistema.Colecoes;

espaco MinhaApi 
{
    publico classe ServidorApi 
    {
        privado ClienteHttp cliente;
        
        construtor ServidorApi() 
        {
            este.cliente = novo ClienteHttp("http://localhost:8080");
        }
        
        publico vazio Iniciar() 
        {
            imprima("🚀 Servidor API iniciado!");
            imprima("📡 Endereço: http://localhost:8080");
            
            // Simular endpoints
            este.ConfigurarRotas();
        }
        
        privado vazio ConfigurarRotas() 
        {
            imprima("⚙️  Configurando rotas...");
            imprima("   GET  /usuarios");
            imprima("   POST /usuarios");
            imprima("   GET  /saude");
        }
    }
    
    publico estática classe Principal 
    {
        publico estática vazio Main() 
        {
            var servidor = novo ServidorApi();
            servidor.Iniciar();
        }
    }
}
EOF

cat > instalacao/templates/api/Projeto.toml << 'EOF'
[projeto]
nome = "MinhaAPI"
versao = "1.0.0"
tipo = "api"

[dependencias]
Sistema = "1.0.0"
EOF

# Criar Projeto.toml para template console
cat > instalacao/templates/console/Projeto.toml << 'EOF'
[projeto]
nome = "MeuApp"
versao = "1.0.0"
tipo = "console"

[dependencias]
Sistema = "1.0.0"
EOF

echo "✅ Compilador instalado com sucesso!"
echo "📍 Localização: $(pwd)/instalacao/"

# Compilar biblioteca padrão
echo ""
echo "=== Compilando Biblioteca Padrão ==="
cd sistema-padrao
chmod +x construir.sh
./construir.sh

echo ""
echo "🎉 Instalação completa!"
echo "Para usar: export PATH=$(pwd)/instalacao/bin:\$PATH"
