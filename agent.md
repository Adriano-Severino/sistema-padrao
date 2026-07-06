# Agent.md - Biblioteca Padrão (sistema-padrao)

## Objetivo do projeto

O projeto `sistema-padrao` é a **biblioteca de classes padrão** da linguagem de programação "Por do Sol". Seu objetivo é fornecer um conjunto fundamental e robusto de APIs para tarefas comuns de programação, de forma análoga à Biblioteca de Classes Base (BCL) do .NET (por exemplo, o namespace `System`).

A biblioteca é escrita inteiramente na própria linguagem Por do Sol (arquivos `.pr`) e serve como a fundação sobre a qual programas mais complexos são construídos.

## Visão da Biblioteca

A `sistema-padrao` deve ser a primeira e mais importante dependência para qualquer desenvolvedor Por do Sol, seguindo estes princípios:

- **Português Primeiro**: Todos os namespaces, classes, métodos, propriedades e tipos públicos devem ser nomeados em português brasileiro, de forma clara e idiomática. Por exemplo, `Sistema.IO.Arquivo` em vez de `System.IO.File`.
- **Familiaridade com .NET/C#**: A estrutura de namespaces e a semântica das classes devem ser fortemente inspiradas na BCL do .NET. Isso facilita a transição de desenvolvedores C# e aproveita um design de API já consolidado. A ideia é traduzir o modelo mental, não apenas os nomes.
- **Código Real e Compilável**: A biblioteca não é um conjunto de declarações, mas sim uma implementação funcional que é compilada para bytecode (`.pbc`).
- **Modularidade**: A biblioteca é organizada em namespaces que agrupam funcionalidades relacionadas, como `Sistema.IO` para entrada e saída, `Sistema.Colecoes` para estruturas de dados, e `Sistema.Texto` para manipulação de strings.

## Estrutura do Projeto

A estrutura do diretório `sistema-padrao` é organizada para facilitar a compilação como uma biblioteca autocontida.

- `src/`: Contém todo o código-fonte da biblioteca, escrito em arquivos `.pr`. Os subdiretórios dentro de `src/` geralmente se alinham com os namespaces (ex: `src/IO/Arquivo.pr`).
- `dist/`: Diretório de saída para os artefatos compilados. O principal artefato é `sistema.pbc`.
- `agent.md`: Este arquivo, que descreve o projeto para a IA.
- `README.md`: Documentação para desenvolvedores humanos.

## Processo de Compilação e Integração

A `sistema-padrao` tem um ciclo de vida de compilação específico que se integra ao compilador principal (`compilador-portugues`):

1.  **Compilação da Biblioteca**:
    - O compilador principal pode ser invocado com a flag `--compilar-biblioteca=<caminho-para-sistema-padrao>`.
    - Este comando faz o seguinte:
        - Encontra todos os arquivos `.pr` dentro do diretório `src/` da biblioteca.
        - Realiza a análise léxica, sintática e semântica de todos os arquivos juntos.
        - Gera um único arquivo de bytecode de biblioteca: `dist/sistema.pbc`. Este arquivo contém as definições de tipos, assinaturas de métodos e o bytecode das implementações.

2.  **Uso pelo Compilador Principal**:
    - Ao compilar um programa de usuário (ex: `meu_programa.pr`), o compilador `compilador-portugues` primeiro localiza a biblioteca padrão compilada (`sistema.pbc`).
    - O arquivo `main.rs` do compilador contém a lógica para isso (`assegurar_biblioteca_padrao_compilada`). Se `sistema.pbc` não existir, ele tentará compilar a biblioteca automaticamente.
    - O módulo `library_loader.rs` é responsável por carregar o `sistema.pbc` e popular o `VerificadorTipos` (type checker) com todas as classes, métodos e namespaces da biblioteca padrão.

3.  **Uso no Código do Usuário**:
    - O programador pode então usar a diretiva `usando` para importar namespaces da biblioteca, como `usando Sistema.IO;`.
    - O type checker, agora ciente dos tipos da `sistema-padrao`, pode validar chamadas como `Console.EscreverLinha("Olá");`.
    - Durante a geração de código final para o programa do usuário, o compilador sabe que as chamadas para as funções da biblioteca são válidas e gera as instruções apropriadas.

## Exemplo de Fluxo

O script `compilador-portugues/testar_exemplo_com_stdlib.ps1` é a referência canônica para este fluxo:

1.  Ele primeiro chama o compilador para compilar o projeto `sistema-padrao`, gerando `sistema.pbc`.
    ```powershell
    & $CompiladorPath --compilar-biblioteca=$StdLibProjetoDir
    ```
2.  Em seguida, ele compila o arquivo de exemplo `Utilizado_biblioteca_sistema_padrao.pr`, passando uma referência para a biblioteca recém-compilada.
    ```powershell
    & $CompiladorPath $Exemplo --target bytecode --sistema-lib=$StdLibBytecode
    ```
3.  Finalmente, ele executa o bytecode resultante, que agora depende de código da biblioteca padrão.

## Como Pensar Novas Contribuições

Ao adicionar uma nova funcionalidade à biblioteca padrão (por exemplo, uma classe `Sistema.Texto.ConstrutorTexto` similar ao `StringBuilder` do C#):

1.  **Criar o Arquivo**: Crie o arquivo `.pr` no local apropriado, por exemplo, `src/Texto/ConstrutorTexto.pr`.
2.  **Implementar a Classe**: Escreva a classe `ConstrutorTexto` dentro do namespace `Sistema.Texto`, com seus métodos (`Anexar`, `AnexarLinha`, `ParaTexto`), seguindo o paradigma da linguagem Por do Sol.
3.  **Testar a Compilação**: Recompile a biblioteca usando `cargo run --bin compilador -- --compilar-biblioteca=.` (dentro do diretório `sistema-padrao`).
4.  **Criar Exemplo de Uso**: Adicione ou modifique um arquivo de exemplo no projeto `compilador-portugues/exemplos` para usar a nova classe `ConstrutorTexto`.
5.  **Validar Integração**: Execute um teste de integração, como o `testar_exemplo_com_stdlib.ps1`, para garantir que o compilador consegue carregar a nova classe e que o programa do usuário compila e executa corretamente.
6.  **Documentar**: Atualize o `README.md` da biblioteca para incluir a nova funcionalidade.

O objetivo final é enriquecer a `sistema-padrao` para que ela se torne uma base sólida e completa para o desenvolvimento de aplicações reais em Por do Sol.