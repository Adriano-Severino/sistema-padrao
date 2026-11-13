# Sistema Padrão - Por do sol

Este é o repositório do projeto "System", um sistema padrão para a linguagem de programação "Por do Sol" uma linguagem de programação moderna escrita em português brasileiro.

## 📖 Sobre a Linguagem

Esta linguagem "por do sol" foi desenvolvida com foco acadêmico e educacional, visando democratizar o ensino de programação no Brasil através de uma sintaxe em português. No entanto, ela também é projetada para ser versátil o suficiente para desenvolvimento de aplicações desktop nativas com alta performance, graças à geração de código LLVM.

### 🎯 Objetivo Principal

Fornecer um conjunto fundamental e robusto de APIs para tarefas comuns de programação em Por do Sol, de forma análoga à BCL do .NET — para que aplicações reais possam ser escritas inteiramente na linguagem.

### 🚀 Recursos Principais

- Console, matemática, aleatoriedade, GUIDs e conversões;
- Coleções genéricas (`Lista`, `Dicionario`, `Fila`, `Pilha`, `Conjunto`);
- Manipulação de texto (`Texto`, `ConstrutorTexto`, `Regex`, `Json`, `Codificacao`);
- I/O (`Arquivo`, `Diretorio`, `Leitor`, `Caminho`, `InformacaoArquivo`);
- Data e horário (`Data`, `Horario`);
- Rede (`ClienteHttp`, `SocketTcp`, `ServidorTcp`, `Dns`);
- Concorrência (`Tarefa`, `Mutex`, `Temporizador`, `PoolTarefas`, `Cronometro`);
- Paridade entre os três backends do compilador: bytecode, LLVM e CIL.



## 📋 Pré-requisitos

- **Rust** (para compilar o compilador `compilador-portugues`, que é quem compila esta biblioteca);
- **Clang** + **LLVM** (necessários apenas para o backend LLVM; o interpretador de bytecode não depende deles);
- **.NET SDK** (necessário apenas para o backend CIL/.NET).

A biblioteca em si é escrita em arquivos `.pr` (linguagem Por do Sol) — não há build próprio com `cargo`; quem a compila é o compilador principal.

## ⚙️ Instalação e Configuração

1. **Clone o repositório:**
    ```bash
    git clone https://github.com/Adriano-Severino/sistema-padrao.git
    cd sistema-padrao
    ```
2. **Clone e compile o compilador** (`compilador-portugues`), que é a ferramenta usada para gerar os artefatos desta biblioteca:
    ```bash
    git clone https://github.com/Adriano-Severino/compilador-portugues.git
    cd compilador-portugues
    cargo build
    ```
3. **Compile a biblioteca** a partir do diretório do compilador:
    ```bash
    cargo run --bin compilador -- --compilar-biblioteca=../sistema-padrao
    ```
    Isso gera em `sistema-padrao/dist/`:
    - `sistema.pbl` — bytecode da biblioteca + manifesto de API (usado pelo backend bytecode e pelo type checker);
    - `sistema.ll` — LLVM IR da biblioteca (linkado automaticamente em programas compilados para `llvm-ir`).

## 📝 Como Usar

Num programa `.pr`, importe os namespaces desejados com `usando`:

```por-do-sol
usando Sistema;
usando Sistema.Colecoes;
usando Sistema.Texto;

função Principal() {
    Console.EscreverLinha("Olá, mundo!");

    var lista = novo Lista<inteiro>();
    lista.Adicionar(10);
    lista.Adicionar(20);
    lista.Ordenar();
    Console.EscreverLinha(lista.Obter(0));

    Console.EscreverLinha(Texto.ParaMaiusculas("por do sol"));
}
```

Para compilar o programa, o compilador localiza a biblioteca padrão automaticamente (via `.pbl` pré-compilado em `dist/`, ou via fontes em `src/`). Veja `docs/biblioteca-padrao.md` no projeto `compilador-portugues` para detalhes de cada backend.

### Estrutura Básica de um Programa

```por-do-sol
usando Sistema;              # namespaces da biblioteca padrão

função Principal() {         # ponto de entrada
    Console.EscreverLinha("Olá, mundo!");
}
```

## Passos Manuais de compilação: (para Entender o Processo)

Todos os comandos abaixo são executados a partir do diretório `compilador-portugues` (onde está o `Cargo.toml`):

1. **Compilar a biblioteca padrão** (gera `../sistema-padrao/dist/sistema.pbl` e `sistema.ll`):
    ```bash
    cargo run --bin compilador -- --compilar-biblioteca=../sistema-padrao
    ```
2. **Compilar um programa que usa a biblioteca**:
    ```bash
    # Bytecode próprio (.pbc) — executado pelo interpretador
    cargo run --bin compilador -- exemplos/Utilizado_biblioteca_sistema_padrao.pr --target=bytecode
    cargo run --bin interpretador -- <arquivo>.pbc

    # LLVM IR (.ll) — linkado automaticamente com o runtime e a stdlib
    # (o alvo llvm-ir já inclui a biblioteca TLS quando o programa usa
    #  ClienteHttp; para link manual de https:// adicione
    #  target/tls-cache/libporsol_tls.a -DPOR_DO_SOL_HAS_TLS -lbcrypt
    #  -Wl,/opt:ref -ffunction-sections -fdata-sections no Windows)
    cargo run --bin compilador -- exemplos/Utilizado_biblioteca_sistema_padrao.pr --target=llvm-ir
    clang <arquivo>.ll src/runtime/async_runtime.c src/runtime/porsol_runtime.c ../sistema-padrao/dist/sistema.ll -o <arquivo>.exe -lws2_32 -lshell32 -llegacy_stdio_definitions

    # CIL (.il → .NET) — subconjunto da stdlib mapeado para a BCL
    cargo run --bin compilador -- exemplos/Utilizado_biblioteca_sistema_padrao.pr --target=cil-bytecode
    ```

O script `compilador-portugues/testar_exemplo_com_stdlib.ps1` executa esse fluxo completo (bytecode) de forma automatizada.

## 💡 Exemplos de Código

Exemplos prontos que exercitam a biblioteca padrão por fase de cobertura:

- `compilador-portugues/exemplos/Utilizado_biblioteca_sistema_padrao.pr` — exemplo canônico de uso;
- `compilador-portugues/exemplos/teste_stdlib_fase0.pr` … `teste_stdlib_fase6.pr` — cobertura progressiva por área: console/matemática/JSON, texto/codificação/Regex, I/O, threading, Guid/aleatório e conversão/data/horário/DNS/ambiente (a fase 1 não existe — numeração histórica). O detalhe de cada fase está em `compilador-portugues/docs/biblioteca-padrao.md`.

Todos são verificados por testes de integração nos três backends (ver `tests/llvm_stdlib_test.rs` e `tests/cil_run_examples_test.rs` no compilador).


## 📚 Referência da Linguagem

### APIs implementadas

A referência abaixo lista todas as APIs públicas. Onde cada API executa hoje está detalhado na seção [Status de paridade por backend](#status-de-paridade-por-backend).

- **Sistema.Console** — `Escrever`, `EscreverLinha`, `LerLinha`.
- **Sistema.Colecoes** — `Lista` (Adicionar, Obter, Remover, Limpar, Contem, Inverter, Ordenar, OrdenarDecrescente, Inserir, RemoverUltimo, AdicionarSeAusente, Recortar, ParaArray, ObterPrimeiro/Ultimo, Tamanho), `Dicionario` (Adicionar, Obter, TentarObter, Remover, Chaves, Valores, ContemChave/Valor), `Fila` (Enfileirar, Desenfileirar, Espiar, ParaLista, ParaArray), `Pilha` (Empilhar, Desempilhar, EspiarTopo, ParaLista, ParaArray), `Conjunto` (Adicionar, Remover, Contem, Uniao, Intersecao, Diferenca, ParaArray).
- **Sistema.Texto** — classe estática `Texto` (Dividir, DividirLinhas, Juntar, RemoverEspacos, ParaMaiusculas/Minusculas, Substituir, ComecaCom, TerminaCom, Contem, VazioOuNulo, Tamanho, Subtexto, IndiceDe, UltimoIndiceDe, Inverter, PadEsquerda, PadDireita, ContarOcorrencias, EstaVazia, Repete, Comparar, IgualIgnoreCase), `Codificacao` (ParaBytes, ParaTexto, TamanhoBytes — UTF-8), `ConstrutorTexto`, `Regex` (Corresponde, Localizar, Substituir, Dividir, Contar, Escape, EhValido), `Json` (Serializar, ValidarJson, Formatar, Desserializar).
- **Sistema.IO** — `Arquivo` (Ler/Escrever/AdicionarTexto, versoes Assincronas, Existe, Excluir, Copiar, Mover, Tamanho, Criar, LerLinhas, ExisteAssincrono), `Diretorio` (Existe, Criar, Excluir, ObterAtual, DefinirAtual, ObterArquivos, ObterDiretorios), `Caminho` (Combinar, NomeArquivo, NomeSemExtensao, DiretorioPai, Extensao, Absoluto, Separador), `Leitor` (Abrir, LerLinha, LerResto, EstaNoFim, TemMais, Fechar), `InformacaoArquivo` (Abrir, Existe, Nome, CaminhoCompleto, Tamanho, UltimaModificacao, Diretorio).
- **Sistema.Data** — `Data.Agora()`, `Data.Hoje()`, `Formatar`, `ParaTexto`, `Igual`; `Horario` (duração/TimeSpan: DeSegundos/DeMinutos/DeHoras/DeDias, TotalSegundos/Minutos/Horas/Dias, ParaTexto, Adicionar, Subtrair, Igual, MaiorQue, MenorQue).
- **Sistema.Matematica** — Abs, Max, Min, Potencia, RaizQuadrada, Arredondar, Truncar, Piso, Teto, Seno, Cosseno, Tangente, LogaritmoNatural, LogaritmoDez, Expoente, Pi, E.
- **Sistema.Threading** — `Tarefa.Atraso`, `Tarefa.DeResultado`, `Temporizador.Aguardar`, `PoolTarefas` (Obter/DefinirMaximoParalelismo), `Mutex` (Entrar, TentarEntrar, Sair, EstaTravado, Fechar).
- **Sistema.Aleatorio** — `Aleatorio` (Proximo, ProximoEntre, ProximoFlutuante, ProximoBooleano, Reseed; construtores com e sem semente).
- **Sistema.Guid** — `Novo`, `Vazio`, `EhValido`.
- **Sistema.Ambiente** — `Argumentos`, `VariavelAmbiente`, `DefinirVariavelAmbiente`, `NomeComputador`.
- **Sistema.Conversao** — `ParaInteiro`, `ParaFlutuante`, `ParaDuplo`, `ParaDecimal`, `ParaBooleano`, `EhNumero`.
- **Sistema.Diagnostics** — `Cronometro` (Iniciar, Parar, Reiniciar, DecorridoSegundos, DecorridoMilissegundos, Decorrido, EstaExecutando).
- **Sistema.Rede** — `ClienteHttp` (Obter, Enviar, Atualizar, Excluir + versoes Assincronas), `SocketTcp` (Conectar, Enviar, Receber, Fechar, Conectado), `ServidorTcp` (Ouvir, Aceitar, Fechar, EstaAberto), `Dns` (Resolver, ResolverTodos).

### Status de paridade por backend

- **Bytecode (`.pbc`)**: cobertura completa — todas as APIs acima executam no interpretador via `nativos.rs`.
- **LLVM**: paridade alcançada para todos os nativos exercitados pelos exemplos `teste_stdlib_fase0..6.pr` — coleções, texto, codificação, JSON, Regex (engine própria em C), I/O, Data/Horario, Cronometro, Ambiente, Conversao, Aleatorio, Guid e operações de rede (DNS, TCP, HTTP/HTTPS 1.1 síncronas e `ClienteHttp.*Assincrono` via pool de tarefas). Verificado por `tests/llvm_stdlib_test.rs` no compilador.
- **CIL (.NET)**: subconjunto mapeado para a BCL — `Matematica`→`System.Math`, `Texto` (caixa, trim, tamanho, Subtexto, Índice, Pad, Comparar, IgualIgnoreCase, StartsWith/EndsWith/Contains, Substituir), `Guid.Novo/Vazio/EhValido`→`System.Guid`, `Ambiente` (NomeComputador, Variável/DefinirVariável)→`System.Environment`, `Conversao` (Parse com cultura invariável), `Console`→`System.Console`. Demais APIs (coleções, IO, rede, threading, Regex, Json, Data/Horario, Cronometro) ainda não têm equivalente CIL.

Limitações conhecidas do runtime LLVM (`porsol_runtime.c`):
- `Regex` implementa um subconjunto próprio (literais, `.`, `*`, `+`, `?`, `{n,m}`, classes `[...]`, grupos `(...)`, alternância `|`, escapes e classes predefinidas); não é compatível 100% com a engine do interpretador em padrões exóticos.
- `ClienteHttp` executa HTTP/1.1 com `http://` e `https://`. No LLVM, HTTPS usa mbedTLS vendored (`compilador-portugues/src/runtime/tls/`) com validação de certificados contra um CA bundle Mozilla embutido — sem dependência externa; o runtime TLS só é linkado quando o programa usa `ClienteHttp`. Não há suporte a certificado de cliente (mTLS). No bytecode, TLS delega ao SO via `native-tls`. Os métodos `*Assincrono` rodam a implementação síncrona em threads do pool de tarefas do `async_runtime.c`.
- Operações de rede usam Winsock no Windows e sockets POSIX nos demais sistemas.
- Valores genéricos (`T`/`TValor`) retornados como `nulo` podem aparecer como `0`/vazio quando o tipo inferido é de valor (limitação do LLVM tipado, não do runtime).

## 🏗️ Estrutura do Projeto

```text
sistema-padrao/
├── src/
│   ├── sistema/
│   │   ├── colecoes/          # Similar a System.Collections
│   │   │   ├── lista.pr
│   │   │   ├── dicionario.pr
│   │   │   ├── fila.pr
│   │   │   ├── pilha.pr
│   │   │   └── conjunto.pr
│   │   ├── io/                # Similar a System.IO
│   │   │   ├── arquivo.pr
│   │   │   ├── diretorio.pr
│   │   │   ├── leitor.pr
│   │   │   ├── caminho.pr
│   │   │   └── informacao_arquivo.pr
│   │   ├── rede/              # Similar a System.Net
│   │   │   ├── http.pr
│   │   │   ├── socket.pr
│   │   │   └── dns.pr
│   │   ├── texto/             # Similar a System.Text
│   │   │   ├── texto.pr
│   │   │   ├── codificacao.pr
│   │   │   ├── regex.pr
│   │   │   ├── json.pr
│   │   │   └── construtor_texto.pr
│   │   ├── data/              # Similar a System.DateTime
│   │   │   ├── data.pr
│   │   │   └── horario.pr
│   │   ├── threading/         # Similar a System.Threading
│   │   │   ├── tarefa.pr
│   │   │   ├── mutex.pr
│   │   │   ├── temporizador.pr
│   │   │   └── pool_tarefas.pr
│   │   ├── diagnosticos/      # Similar a System.Diagnostics
│   │   │   └── cronometro.pr
│   │   ├── aleatorio.pr       # Similar a System.Random
│   │   ├── guid.pr            # Similar a System.Guid
│   │   ├── matematica.pr      # Similar a System.Math
│   │   ├── ambiente.pr        # Similar a System.Environment
│   │   ├── conversao.pr       # Similar a System.Convert
│   │   └── console.pr         # Similar a System.Console

```
## 🧩 Extensões e Ferramentas para VS Code

- [Servidor de Linguagem Por do Sol (LSP)](https://github.com/Adriano-Severino/pordosol-language-server)

## 🤝 Contribuindo

Contribuições são muito bem-vindas! Para contribuir:

1. Faça um fork do repositório
2. Clone sua fork:
    ```bash
    git clone https://github.com/Adriano-Severino/sistema-padrao
    ```
3. Crie uma branch para sua feature:
    ```bash
    git checkout -b minha-nova-feature
    ```
4. Faça suas mudanças e adicione testes, se aplicável.
5. Faça um commit das suas mudanças:
    ```bash
    git commit -m "Adiciona nova feature incrível"
    ```
6. Faça um push para sua fork:
    ```bash
    git push origin minha-nova-feature
    ```
7. Abra um Pull Request no repositório original.

## Diretrizes para Contribuição

- Mantenha a sintaxe da linguagem e dos comentários em português brasileiro.
- Adicione testes para novas funcionalidades ou correções de bugs.
- Documente quaisquer mudanças significativas no README.md ou em comentários no código.
- Siga o estilo de código existente.

## 🐛 Reportando Problemas

Encontrou um bug ou tem alguma sugestão? Abra uma Issue [neste link](https://github.com/Adriano-Severino/compilador-portugues) com:

1. Descrição detalhada do problema ou sugestão.
2. Passos para reproduzir o erro (se for um bug).
3. Informações do seu ambiente de desenvolvimento (versão do Rust, sistema operacional, etc).
4. Se possível, forneça um exemplo de código que reproduz o problema.
5. Saída esperada vs. saída atual.

## 📝 Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo LICENSE para detalhes.

## Agradecimentos

- À comunidade Rust por suas ferramentas e ecossistema incríveis.
- Ao projeto LLVM por fornecer uma infraestrutura de compilação robusta e poderosa.
- Aos educadores e estudantes brasileiros que inspiram e podem se beneficiar deste projeto.

⭐ Se este projeto foi útil, deixe uma estrela!

🌟 Ajude a democratizar a programação em português!
