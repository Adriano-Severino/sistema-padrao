target triple = "x86_64-pc-windows-msvc"
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)
declare i8* @malloc(i64)
declare i32 @sprintf(i8*, i8*, ...)
declare i64 @strlen(i8*)
%task = type opaque
declare i32 @next_task_id()
declare %task* @task_create(i32)
declare void @task_submit_to_pool(%task*, i8* (i8*)*, i8*)
declare i8* @task_await(%task*)
declare %task* @task_create_read_file(i8*)
declare %task* @task_create_write_file(i8*, i8*)
declare %task* @task_create_file_exists(i8*)
declare %task* @task_create_append_file(i8*, i8*)
declare %task* @task_create_sleep(i64)
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg)
declare void @llvm.memset.p0i8.i64(i8*, i8, i64, i1)
%array = type { i32, i8* }
@.println_fmt = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.int_fmt = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.float_fmt = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.double_fmt = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.empty_str = private unnamed_addr constant [1 x i8] c"\00", align 1
@.scanline_fmt = private unnamed_addr constant [16 x i8] c"%255[^\0D\0A]%*[\0D\0A]\00", align 1
@.oob_msg = private unnamed_addr constant [23 x i8] c"Indice fora dos limites", align 1
%porsol.value = type { i32, i64, double, i8*, i8* }
%porsol.arr = type { i32, i32, i8* }
declare void @porsol_native_call(%porsol.value*, i8*, i32, %porsol.value*)
declare i8* @porsol_obj_new(i8*)
%class.Sistema_Aleatorio_Aleatorio = type { i8** }
%class.Sistema_Ambiente = type { i8** }
%class.Sistema_Colecoes_Conjunto = type { i8**, %array*, i32, i32, i32 }
%class.Sistema_Colecoes_Dicionario = type { i8**, i32 }
%class.Sistema_Colecoes_Fila = type { i8**, %array*, i32, i32, i32 }
%class.Sistema_Colecoes_Lista = type { i8**, %array*, i32, i32, i32, i32 }
%class.Sistema_Colecoes_Pilha = type { i8**, %array*, i32, i32, i32 }
%class.Sistema_Console = type { i8** }
%class.Sistema_Conversao = type { i8** }
%class.Sistema_Data_Data = type { i8**, i32, i32, i32, i32, i32, i32 }
%class.Sistema_Data_Horario = type { i8**, i32 }
%class.Sistema_Diagnostics_Cronometro = type { i8** }
%class.Sistema_Guid = type { i8** }
%class.Sistema_IO_Arquivo = type { i8** }
%class.Sistema_IO_Caminho = type { i8** }
%class.Sistema_IO_Diretorio = type { i8** }
%class.Sistema_IO_InformacaoArquivo = type { i8** }
%class.Sistema_IO_Leitor = type { i8** }
%class.Sistema_Matematica = type { i8** }
%class.Sistema_Rede_ClienteHttp = type { i8**, i8* }
%class.Sistema_Rede_Dns = type { i8** }
%class.Sistema_Rede_ServidorTcp = type { i8** }
%class.Sistema_Rede_SocketTcp = type { i8** }
%class.Sistema_Texto_Codificacao = type { i8** }
%class.Sistema_Texto_ConstrutorTexto = type { i8** }
%class.Sistema_Texto_Json = type { i8** }
%class.Sistema_Texto_Regex = type { i8**, i8* }
%class.Sistema_Texto_Texto = type { i8** }
%class.Sistema_Threading_Mutex = type { i8** }
%class.Sistema_Threading_PoolTarefas = type { i8** }
%class.Sistema_Threading_Tarefa = type { i8** }
%class.Sistema_Threading_Temporizador = type { i8** }
%class.objeto = type { i8** }
@.vtable.Sistema_Aleatorio_Aleatorio = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Ambiente = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Colecoes_Conjunto = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Colecoes_Dicionario = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Colecoes_Fila = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Colecoes_Lista = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Colecoes_Pilha = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Console = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Conversao = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Data_Data = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Data_Horario = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Diagnostics_Cronometro = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Guid = global [0 x i8*] [  ], align 8
@.vtable.Sistema_IO_Arquivo = global [0 x i8*] [  ], align 8
@.vtable.Sistema_IO_Caminho = global [0 x i8*] [  ], align 8
@.vtable.Sistema_IO_Diretorio = global [0 x i8*] [  ], align 8
@.vtable.Sistema_IO_InformacaoArquivo = global [0 x i8*] [  ], align 8
@.vtable.Sistema_IO_Leitor = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Matematica = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Rede_ClienteHttp = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Rede_Dns = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Rede_ServidorTcp = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Rede_SocketTcp = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Texto_Codificacao = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Texto_ConstrutorTexto = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Texto_Json = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Texto_Regex = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Texto_Texto = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Threading_Mutex = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Threading_PoolTarefas = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Threading_Tarefa = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Threading_Temporizador = global [0 x i8*] [  ], align 8
@.vtable.objeto = global [0 x i8*] [  ], align 8
@.str.0 = private unnamed_addr constant [1 x i8] c"\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
define i32 @"Sistema_Aleatorio_Aleatorio::Proximo"(%class.Sistema_Aleatorio_Aleatorio* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Aleatorio_Aleatorio*, align 8
  store %class.Sistema_Aleatorio_Aleatorio* %param.self, %class.Sistema_Aleatorio_Aleatorio** %var.self
  unreachable ; O método 'Proximo' deve ter um retorno
}
define i32 @"Sistema_Aleatorio_Aleatorio::ProximoEntre"(%class.Sistema_Aleatorio_Aleatorio* %param.self, i32 %param.minimo, i32 %param.maximo) { 
entry:
  %var.self = alloca %class.Sistema_Aleatorio_Aleatorio*, align 8
  store %class.Sistema_Aleatorio_Aleatorio* %param.self, %class.Sistema_Aleatorio_Aleatorio** %var.self
  %var.minimo = alloca i32, align 4
  store i32 %param.minimo, i32* %var.minimo
  %var.maximo = alloca i32, align 4
  store i32 %param.maximo, i32* %var.maximo
  unreachable ; O método 'ProximoEntre' deve ter um retorno
}
define double @"Sistema_Aleatorio_Aleatorio::ProximoFlutuante"(%class.Sistema_Aleatorio_Aleatorio* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Aleatorio_Aleatorio*, align 8
  store %class.Sistema_Aleatorio_Aleatorio* %param.self, %class.Sistema_Aleatorio_Aleatorio** %var.self
  unreachable ; O método 'ProximoFlutuante' deve ter um retorno
}
define i1 @"Sistema_Aleatorio_Aleatorio::ProximoBooleano"(%class.Sistema_Aleatorio_Aleatorio* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Aleatorio_Aleatorio*, align 8
  store %class.Sistema_Aleatorio_Aleatorio* %param.self, %class.Sistema_Aleatorio_Aleatorio** %var.self
  unreachable ; O método 'ProximoBooleano' deve ter um retorno
}
define void @"Sistema_Aleatorio_Aleatorio::Reseed"(%class.Sistema_Aleatorio_Aleatorio* %param.self, i32 %param.semente) { 
entry:
  %var.self = alloca %class.Sistema_Aleatorio_Aleatorio*, align 8
  store %class.Sistema_Aleatorio_Aleatorio* %param.self, %class.Sistema_Aleatorio_Aleatorio** %var.self
  %var.semente = alloca i32, align 4
  store i32 %param.semente, i32* %var.semente
  ret void
}
define void @"Sistema_Aleatorio_Aleatorio::construtor$0"(%class.Sistema_Aleatorio_Aleatorio* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Aleatorio_Aleatorio*, align 8
  store %class.Sistema_Aleatorio_Aleatorio* %param.self, %class.Sistema_Aleatorio_Aleatorio** %var.self
  ret void
}
define void @"Sistema_Aleatorio_Aleatorio::construtor$1"(%class.Sistema_Aleatorio_Aleatorio* %param.self, i32 %param.semente) { 
entry:
  %var.self = alloca %class.Sistema_Aleatorio_Aleatorio*, align 8
  store %class.Sistema_Aleatorio_Aleatorio* %param.self, %class.Sistema_Aleatorio_Aleatorio** %var.self
  %var.semente = alloca i32, align 4
  store i32 %param.semente, i32* %var.semente
  ret void
}
define %array* @"Sistema_Ambiente::Argumentos"(%class.Sistema_Ambiente* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Ambiente*, align 8
  store %class.Sistema_Ambiente* %param.self, %class.Sistema_Ambiente** %var.self
  unreachable ; O método 'Argumentos' deve ter um retorno
}
define i8* @"Sistema_Ambiente::VariavelAmbiente"(%class.Sistema_Ambiente* %param.self, i8* %param.nome) { 
entry:
  %var.self = alloca %class.Sistema_Ambiente*, align 8
  store %class.Sistema_Ambiente* %param.self, %class.Sistema_Ambiente** %var.self
  %var.nome = alloca i8*, align 8
  store i8* %param.nome, i8** %var.nome
  unreachable ; O método 'VariavelAmbiente' deve ter um retorno
}
define void @"Sistema_Ambiente::DefinirVariavelAmbiente"(%class.Sistema_Ambiente* %param.self, i8* %param.nome, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Ambiente*, align 8
  store %class.Sistema_Ambiente* %param.self, %class.Sistema_Ambiente** %var.self
  %var.nome = alloca i8*, align 8
  store i8* %param.nome, i8** %var.nome
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  ret void
}
define i8* @"Sistema_Ambiente::NomeComputador"(%class.Sistema_Ambiente* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Ambiente*, align 8
  store %class.Sistema_Ambiente* %param.self, %class.Sistema_Ambiente** %var.self
  unreachable ; O método 'NomeComputador' deve ter um retorno
}
define void @"Sistema_Console::EscreverLinha"(%class.Sistema_Console* %param.self, i8* %param.mensagem) { 
entry:
  %var.self = alloca %class.Sistema_Console*, align 8
  store %class.Sistema_Console* %param.self, %class.Sistema_Console** %var.self
  %var.mensagem = alloca i8*, align 8
  store i8* %param.mensagem, i8** %var.mensagem
  ret void
}
define void @"Sistema_Console::Escrever"(%class.Sistema_Console* %param.self, i8* %param.mensagem) { 
entry:
  %var.self = alloca %class.Sistema_Console*, align 8
  store %class.Sistema_Console* %param.self, %class.Sistema_Console** %var.self
  %var.mensagem = alloca i8*, align 8
  store i8* %param.mensagem, i8** %var.mensagem
  ret void
}
define i8* @"Sistema_Console::LerLinha"(%class.Sistema_Console* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Console*, align 8
  store %class.Sistema_Console* %param.self, %class.Sistema_Console** %var.self
  unreachable ; O método 'LerLinha' deve ter um retorno
}
define i32 @"Sistema_Conversao::ParaInteiro"(%class.Sistema_Conversao* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Conversao*, align 8
  store %class.Sistema_Conversao* %param.self, %class.Sistema_Conversao** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'ParaInteiro' deve ter um retorno
}
define float @"Sistema_Conversao::ParaFlutuante"(%class.Sistema_Conversao* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Conversao*, align 8
  store %class.Sistema_Conversao* %param.self, %class.Sistema_Conversao** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'ParaFlutuante' deve ter um retorno
}
define double @"Sistema_Conversao::ParaDuplo"(%class.Sistema_Conversao* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Conversao*, align 8
  store %class.Sistema_Conversao* %param.self, %class.Sistema_Conversao** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'ParaDuplo' deve ter um retorno
}
define i8* @"Sistema_Conversao::ParaDecimal"(%class.Sistema_Conversao* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Conversao*, align 8
  store %class.Sistema_Conversao* %param.self, %class.Sistema_Conversao** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'ParaDecimal' deve ter um retorno
}
define i1 @"Sistema_Conversao::ParaBooleano"(%class.Sistema_Conversao* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Conversao*, align 8
  store %class.Sistema_Conversao* %param.self, %class.Sistema_Conversao** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'ParaBooleano' deve ter um retorno
}
define i1 @"Sistema_Conversao::EhNumero"(%class.Sistema_Conversao* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Conversao*, align 8
  store %class.Sistema_Conversao* %param.self, %class.Sistema_Conversao** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'EhNumero' deve ter um retorno
}
define i8* @"Sistema_Guid::Novo"(%class.Sistema_Guid* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Guid*, align 8
  store %class.Sistema_Guid* %param.self, %class.Sistema_Guid** %var.self
  unreachable ; O método 'Novo' deve ter um retorno
}
define i1 @"Sistema_Guid::EhValido"(%class.Sistema_Guid* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Guid*, align 8
  store %class.Sistema_Guid* %param.self, %class.Sistema_Guid** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'EhValido' deve ter um retorno
}
define i8* @"Sistema_Guid::Vazio"(%class.Sistema_Guid* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Guid*, align 8
  store %class.Sistema_Guid* %param.self, %class.Sistema_Guid** %var.self
  unreachable ; O método 'Vazio' deve ter um retorno
}
define double @"Sistema_Matematica::Abs"(%class.Sistema_Matematica* %param.self, double %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Matematica*, align 8
  store %class.Sistema_Matematica* %param.self, %class.Sistema_Matematica** %var.self
  %var.valor = alloca double, align 8
  store double %param.valor, double* %var.valor
  unreachable ; O método 'Abs' deve ter um retorno
}
define double @"Sistema_Matematica::Max"(%class.Sistema_Matematica* %param.self, double %param.a, double %param.b) { 
entry:
  %var.self = alloca %class.Sistema_Matematica*, align 8
  store %class.Sistema_Matematica* %param.self, %class.Sistema_Matematica** %var.self
  %var.a = alloca double, align 8
  store double %param.a, double* %var.a
  %var.b = alloca double, align 8
  store double %param.b, double* %var.b
  unreachable ; O método 'Max' deve ter um retorno
}
define double @"Sistema_Matematica::Min"(%class.Sistema_Matematica* %param.self, double %param.a, double %param.b) { 
entry:
  %var.self = alloca %class.Sistema_Matematica*, align 8
  store %class.Sistema_Matematica* %param.self, %class.Sistema_Matematica** %var.self
  %var.a = alloca double, align 8
  store double %param.a, double* %var.a
  %var.b = alloca double, align 8
  store double %param.b, double* %var.b
  unreachable ; O método 'Min' deve ter um retorno
}
define double @"Sistema_Matematica::Potencia"(%class.Sistema_Matematica* %param.self, double %param.valorBase, double %param.expoente) { 
entry:
  %var.self = alloca %class.Sistema_Matematica*, align 8
  store %class.Sistema_Matematica* %param.self, %class.Sistema_Matematica** %var.self
  %var.valorBase = alloca double, align 8
  store double %param.valorBase, double* %var.valorBase
  %var.expoente = alloca double, align 8
  store double %param.expoente, double* %var.expoente
  unreachable ; O método 'Potencia' deve ter um retorno
}
define double @"Sistema_Matematica::RaizQuadrada"(%class.Sistema_Matematica* %param.self, double %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Matematica*, align 8
  store %class.Sistema_Matematica* %param.self, %class.Sistema_Matematica** %var.self
  %var.valor = alloca double, align 8
  store double %param.valor, double* %var.valor
  unreachable ; O método 'RaizQuadrada' deve ter um retorno
}
define double @"Sistema_Matematica::Arredondar"(%class.Sistema_Matematica* %param.self, double %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Matematica*, align 8
  store %class.Sistema_Matematica* %param.self, %class.Sistema_Matematica** %var.self
  %var.valor = alloca double, align 8
  store double %param.valor, double* %var.valor
  unreachable ; O método 'Arredondar' deve ter um retorno
}
define double @"Sistema_Matematica::Truncar"(%class.Sistema_Matematica* %param.self, double %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Matematica*, align 8
  store %class.Sistema_Matematica* %param.self, %class.Sistema_Matematica** %var.self
  %var.valor = alloca double, align 8
  store double %param.valor, double* %var.valor
  unreachable ; O método 'Truncar' deve ter um retorno
}
define double @"Sistema_Matematica::Piso"(%class.Sistema_Matematica* %param.self, double %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Matematica*, align 8
  store %class.Sistema_Matematica* %param.self, %class.Sistema_Matematica** %var.self
  %var.valor = alloca double, align 8
  store double %param.valor, double* %var.valor
  unreachable ; O método 'Piso' deve ter um retorno
}
define double @"Sistema_Matematica::Teto"(%class.Sistema_Matematica* %param.self, double %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Matematica*, align 8
  store %class.Sistema_Matematica* %param.self, %class.Sistema_Matematica** %var.self
  %var.valor = alloca double, align 8
  store double %param.valor, double* %var.valor
  unreachable ; O método 'Teto' deve ter um retorno
}
define double @"Sistema_Matematica::Seno"(%class.Sistema_Matematica* %param.self, double %param.angulo) { 
entry:
  %var.self = alloca %class.Sistema_Matematica*, align 8
  store %class.Sistema_Matematica* %param.self, %class.Sistema_Matematica** %var.self
  %var.angulo = alloca double, align 8
  store double %param.angulo, double* %var.angulo
  unreachable ; O método 'Seno' deve ter um retorno
}
define double @"Sistema_Matematica::Cosseno"(%class.Sistema_Matematica* %param.self, double %param.angulo) { 
entry:
  %var.self = alloca %class.Sistema_Matematica*, align 8
  store %class.Sistema_Matematica* %param.self, %class.Sistema_Matematica** %var.self
  %var.angulo = alloca double, align 8
  store double %param.angulo, double* %var.angulo
  unreachable ; O método 'Cosseno' deve ter um retorno
}
define double @"Sistema_Matematica::Tangente"(%class.Sistema_Matematica* %param.self, double %param.angulo) { 
entry:
  %var.self = alloca %class.Sistema_Matematica*, align 8
  store %class.Sistema_Matematica* %param.self, %class.Sistema_Matematica** %var.self
  %var.angulo = alloca double, align 8
  store double %param.angulo, double* %var.angulo
  unreachable ; O método 'Tangente' deve ter um retorno
}
define double @"Sistema_Matematica::LogaritmoNatural"(%class.Sistema_Matematica* %param.self, double %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Matematica*, align 8
  store %class.Sistema_Matematica* %param.self, %class.Sistema_Matematica** %var.self
  %var.valor = alloca double, align 8
  store double %param.valor, double* %var.valor
  unreachable ; O método 'LogaritmoNatural' deve ter um retorno
}
define double @"Sistema_Matematica::LogaritmoDez"(%class.Sistema_Matematica* %param.self, double %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Matematica*, align 8
  store %class.Sistema_Matematica* %param.self, %class.Sistema_Matematica** %var.self
  %var.valor = alloca double, align 8
  store double %param.valor, double* %var.valor
  unreachable ; O método 'LogaritmoDez' deve ter um retorno
}
define double @"Sistema_Matematica::Expoente"(%class.Sistema_Matematica* %param.self, double %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Matematica*, align 8
  store %class.Sistema_Matematica* %param.self, %class.Sistema_Matematica** %var.self
  %var.valor = alloca double, align 8
  store double %param.valor, double* %var.valor
  unreachable ; O método 'Expoente' deve ter um retorno
}
define double @"Sistema_Matematica::Pi"(%class.Sistema_Matematica* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Matematica*, align 8
  store %class.Sistema_Matematica* %param.self, %class.Sistema_Matematica** %var.self
  unreachable ; O método 'Pi' deve ter um retorno
}
define double @"Sistema_Matematica::E"(%class.Sistema_Matematica* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Matematica*, align 8
  store %class.Sistema_Matematica* %param.self, %class.Sistema_Matematica** %var.self
  unreachable ; O método 'E' deve ter um retorno
}
define %class.Sistema_Data_Data* @"Sistema_Data_Data::Agora"(%class.Sistema_Data_Data* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Data_Data*, align 8
  store %class.Sistema_Data_Data* %param.self, %class.Sistema_Data_Data** %var.self
  unreachable ; O método 'Agora' deve ter um retorno
}
define %class.Sistema_Data_Data* @"Sistema_Data_Data::Hoje"(%class.Sistema_Data_Data* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Data_Data*, align 8
  store %class.Sistema_Data_Data* %param.self, %class.Sistema_Data_Data** %var.self
  unreachable ; O método 'Hoje' deve ter um retorno
}
define i8* @"Sistema_Data_Data::ParaTexto"(%class.Sistema_Data_Data* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Data_Data*, align 8
  store %class.Sistema_Data_Data* %param.self, %class.Sistema_Data_Data** %var.self
  %tmp.0 = getelementptr inbounds [1 x i8], [1 x i8]* @.str.0, i32 0, i32 0

  %tmp.1 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.2 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.1, i32 0, i32 3

  %tmp.3 = load i32, i32* %tmp.2
  %tmp.4 = alloca [21 x i8], align 1
  %tmp.5 = getelementptr inbounds [21 x i8], [21 x i8]* %tmp.4, i32 0, i32 0
  %tmp.6 = getelementptr inbounds [3 x i8], [3 x i8]* @.int_fmt, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %tmp.5, i8* %tmp.6, i32 %tmp.3)
  %tmp.7 = icmp eq i8* %tmp.0, null
  %tmp.8 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.9 = select i1 %tmp.7, i8* %tmp.8, i8* %tmp.0
  %tmp.10 = icmp eq i8* %tmp.5, null
  %tmp.11 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.12 = select i1 %tmp.10, i8* %tmp.11, i8* %tmp.5
  %tmp.13 = call i64 @strlen(i8* %tmp.9)
  %tmp.14 = call i64 @strlen(i8* %tmp.12)
  %tmp.15 = add i64 %tmp.13, %tmp.14
  %tmp.16 = add i64 %tmp.15, 1
  %tmp.17 = call i8* @malloc(i64 %tmp.16)
  %tmp.18 = getelementptr i8, i8* %tmp.17, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.18, i8* align 1 %tmp.9, i64 %tmp.13, i1 false)
  %tmp.19 = getelementptr i8, i8* %tmp.17, i64 %tmp.13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.19, i8* align 1 %tmp.12, i64 %tmp.14, i1 false)
  %tmp.20 = getelementptr i8, i8* %tmp.17, i64 %tmp.15
  store i8 0, i8* %tmp.20
  %tmp.21 = getelementptr inbounds [2 x i8], [2 x i8]* @.str.1, i32 0, i32 0
  %tmp.22 = icmp eq i8* %tmp.17, null
  %tmp.23 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.24 = select i1 %tmp.22, i8* %tmp.23, i8* %tmp.17
  %tmp.25 = icmp eq i8* %tmp.21, null
  %tmp.26 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.27 = select i1 %tmp.25, i8* %tmp.26, i8* %tmp.21
  %tmp.28 = call i64 @strlen(i8* %tmp.24)
  %tmp.29 = call i64 @strlen(i8* %tmp.27)
  %tmp.30 = add i64 %tmp.28, %tmp.29
  %tmp.31 = add i64 %tmp.30, 1
  %tmp.32 = call i8* @malloc(i64 %tmp.31)
  %tmp.33 = getelementptr i8, i8* %tmp.32, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.33, i8* align 1 %tmp.24, i64 %tmp.28, i1 false)
  %tmp.34 = getelementptr i8, i8* %tmp.32, i64 %tmp.28
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.34, i8* align 1 %tmp.27, i64 %tmp.29, i1 false)
  %tmp.35 = getelementptr i8, i8* %tmp.32, i64 %tmp.30
  store i8 0, i8* %tmp.35

  %tmp.36 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.37 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.36, i32 0, i32 2

  %tmp.38 = load i32, i32* %tmp.37
  %tmp.39 = alloca [21 x i8], align 1
  %tmp.40 = getelementptr inbounds [21 x i8], [21 x i8]* %tmp.39, i32 0, i32 0
  %tmp.41 = getelementptr inbounds [3 x i8], [3 x i8]* @.int_fmt, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %tmp.40, i8* %tmp.41, i32 %tmp.38)
  %tmp.42 = icmp eq i8* %tmp.32, null
  %tmp.43 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.44 = select i1 %tmp.42, i8* %tmp.43, i8* %tmp.32
  %tmp.45 = icmp eq i8* %tmp.40, null
  %tmp.46 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.47 = select i1 %tmp.45, i8* %tmp.46, i8* %tmp.40
  %tmp.48 = call i64 @strlen(i8* %tmp.44)
  %tmp.49 = call i64 @strlen(i8* %tmp.47)
  %tmp.50 = add i64 %tmp.48, %tmp.49
  %tmp.51 = add i64 %tmp.50, 1
  %tmp.52 = call i8* @malloc(i64 %tmp.51)
  %tmp.53 = getelementptr i8, i8* %tmp.52, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.53, i8* align 1 %tmp.44, i64 %tmp.48, i1 false)
  %tmp.54 = getelementptr i8, i8* %tmp.52, i64 %tmp.48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.54, i8* align 1 %tmp.47, i64 %tmp.49, i1 false)
  %tmp.55 = getelementptr i8, i8* %tmp.52, i64 %tmp.50
  store i8 0, i8* %tmp.55
  %tmp.56 = getelementptr inbounds [2 x i8], [2 x i8]* @.str.2, i32 0, i32 0
  %tmp.57 = icmp eq i8* %tmp.52, null
  %tmp.58 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.59 = select i1 %tmp.57, i8* %tmp.58, i8* %tmp.52
  %tmp.60 = icmp eq i8* %tmp.56, null
  %tmp.61 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.62 = select i1 %tmp.60, i8* %tmp.61, i8* %tmp.56
  %tmp.63 = call i64 @strlen(i8* %tmp.59)
  %tmp.64 = call i64 @strlen(i8* %tmp.62)
  %tmp.65 = add i64 %tmp.63, %tmp.64
  %tmp.66 = add i64 %tmp.65, 1
  %tmp.67 = call i8* @malloc(i64 %tmp.66)
  %tmp.68 = getelementptr i8, i8* %tmp.67, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.68, i8* align 1 %tmp.59, i64 %tmp.63, i1 false)
  %tmp.69 = getelementptr i8, i8* %tmp.67, i64 %tmp.63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.69, i8* align 1 %tmp.62, i64 %tmp.64, i1 false)
  %tmp.70 = getelementptr i8, i8* %tmp.67, i64 %tmp.65
  store i8 0, i8* %tmp.70

  %tmp.71 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.72 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.71, i32 0, i32 1

  %tmp.73 = load i32, i32* %tmp.72
  %tmp.74 = alloca [21 x i8], align 1
  %tmp.75 = getelementptr inbounds [21 x i8], [21 x i8]* %tmp.74, i32 0, i32 0
  %tmp.76 = getelementptr inbounds [3 x i8], [3 x i8]* @.int_fmt, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %tmp.75, i8* %tmp.76, i32 %tmp.73)
  %tmp.77 = icmp eq i8* %tmp.67, null
  %tmp.78 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.79 = select i1 %tmp.77, i8* %tmp.78, i8* %tmp.67
  %tmp.80 = icmp eq i8* %tmp.75, null
  %tmp.81 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.82 = select i1 %tmp.80, i8* %tmp.81, i8* %tmp.75
  %tmp.83 = call i64 @strlen(i8* %tmp.79)
  %tmp.84 = call i64 @strlen(i8* %tmp.82)
  %tmp.85 = add i64 %tmp.83, %tmp.84
  %tmp.86 = add i64 %tmp.85, 1
  %tmp.87 = call i8* @malloc(i64 %tmp.86)
  %tmp.88 = getelementptr i8, i8* %tmp.87, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.88, i8* align 1 %tmp.79, i64 %tmp.83, i1 false)
  %tmp.89 = getelementptr i8, i8* %tmp.87, i64 %tmp.83
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.89, i8* align 1 %tmp.82, i64 %tmp.84, i1 false)
  %tmp.90 = getelementptr i8, i8* %tmp.87, i64 %tmp.85
  store i8 0, i8* %tmp.90
  %tmp.91 = getelementptr inbounds [2 x i8], [2 x i8]* @.str.3, i32 0, i32 0
  %tmp.92 = icmp eq i8* %tmp.87, null
  %tmp.93 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.94 = select i1 %tmp.92, i8* %tmp.93, i8* %tmp.87
  %tmp.95 = icmp eq i8* %tmp.91, null
  %tmp.96 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.97 = select i1 %tmp.95, i8* %tmp.96, i8* %tmp.91
  %tmp.98 = call i64 @strlen(i8* %tmp.94)
  %tmp.99 = call i64 @strlen(i8* %tmp.97)
  %tmp.100 = add i64 %tmp.98, %tmp.99
  %tmp.101 = add i64 %tmp.100, 1
  %tmp.102 = call i8* @malloc(i64 %tmp.101)
  %tmp.103 = getelementptr i8, i8* %tmp.102, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.103, i8* align 1 %tmp.94, i64 %tmp.98, i1 false)
  %tmp.104 = getelementptr i8, i8* %tmp.102, i64 %tmp.98
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.104, i8* align 1 %tmp.97, i64 %tmp.99, i1 false)
  %tmp.105 = getelementptr i8, i8* %tmp.102, i64 %tmp.100
  store i8 0, i8* %tmp.105

  %tmp.106 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.107 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.106, i32 0, i32 4

  %tmp.108 = load i32, i32* %tmp.107
  %tmp.109 = alloca [21 x i8], align 1
  %tmp.110 = getelementptr inbounds [21 x i8], [21 x i8]* %tmp.109, i32 0, i32 0
  %tmp.111 = getelementptr inbounds [3 x i8], [3 x i8]* @.int_fmt, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %tmp.110, i8* %tmp.111, i32 %tmp.108)
  %tmp.112 = icmp eq i8* %tmp.102, null
  %tmp.113 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.114 = select i1 %tmp.112, i8* %tmp.113, i8* %tmp.102
  %tmp.115 = icmp eq i8* %tmp.110, null
  %tmp.116 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.117 = select i1 %tmp.115, i8* %tmp.116, i8* %tmp.110
  %tmp.118 = call i64 @strlen(i8* %tmp.114)
  %tmp.119 = call i64 @strlen(i8* %tmp.117)
  %tmp.120 = add i64 %tmp.118, %tmp.119
  %tmp.121 = add i64 %tmp.120, 1
  %tmp.122 = call i8* @malloc(i64 %tmp.121)
  %tmp.123 = getelementptr i8, i8* %tmp.122, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.123, i8* align 1 %tmp.114, i64 %tmp.118, i1 false)
  %tmp.124 = getelementptr i8, i8* %tmp.122, i64 %tmp.118
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.124, i8* align 1 %tmp.117, i64 %tmp.119, i1 false)
  %tmp.125 = getelementptr i8, i8* %tmp.122, i64 %tmp.120
  store i8 0, i8* %tmp.125
  %tmp.126 = getelementptr inbounds [2 x i8], [2 x i8]* @.str.4, i32 0, i32 0
  %tmp.127 = icmp eq i8* %tmp.122, null
  %tmp.128 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.129 = select i1 %tmp.127, i8* %tmp.128, i8* %tmp.122
  %tmp.130 = icmp eq i8* %tmp.126, null
  %tmp.131 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.132 = select i1 %tmp.130, i8* %tmp.131, i8* %tmp.126
  %tmp.133 = call i64 @strlen(i8* %tmp.129)
  %tmp.134 = call i64 @strlen(i8* %tmp.132)
  %tmp.135 = add i64 %tmp.133, %tmp.134
  %tmp.136 = add i64 %tmp.135, 1
  %tmp.137 = call i8* @malloc(i64 %tmp.136)
  %tmp.138 = getelementptr i8, i8* %tmp.137, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.138, i8* align 1 %tmp.129, i64 %tmp.133, i1 false)
  %tmp.139 = getelementptr i8, i8* %tmp.137, i64 %tmp.133
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.139, i8* align 1 %tmp.132, i64 %tmp.134, i1 false)
  %tmp.140 = getelementptr i8, i8* %tmp.137, i64 %tmp.135
  store i8 0, i8* %tmp.140

  %tmp.141 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.142 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.141, i32 0, i32 5

  %tmp.143 = load i32, i32* %tmp.142
  %tmp.144 = alloca [21 x i8], align 1
  %tmp.145 = getelementptr inbounds [21 x i8], [21 x i8]* %tmp.144, i32 0, i32 0
  %tmp.146 = getelementptr inbounds [3 x i8], [3 x i8]* @.int_fmt, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %tmp.145, i8* %tmp.146, i32 %tmp.143)
  %tmp.147 = icmp eq i8* %tmp.137, null
  %tmp.148 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.149 = select i1 %tmp.147, i8* %tmp.148, i8* %tmp.137
  %tmp.150 = icmp eq i8* %tmp.145, null
  %tmp.151 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.152 = select i1 %tmp.150, i8* %tmp.151, i8* %tmp.145
  %tmp.153 = call i64 @strlen(i8* %tmp.149)
  %tmp.154 = call i64 @strlen(i8* %tmp.152)
  %tmp.155 = add i64 %tmp.153, %tmp.154
  %tmp.156 = add i64 %tmp.155, 1
  %tmp.157 = call i8* @malloc(i64 %tmp.156)
  %tmp.158 = getelementptr i8, i8* %tmp.157, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.158, i8* align 1 %tmp.149, i64 %tmp.153, i1 false)
  %tmp.159 = getelementptr i8, i8* %tmp.157, i64 %tmp.153
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.159, i8* align 1 %tmp.152, i64 %tmp.154, i1 false)
  %tmp.160 = getelementptr i8, i8* %tmp.157, i64 %tmp.155
  store i8 0, i8* %tmp.160
  %tmp.161 = getelementptr inbounds [2 x i8], [2 x i8]* @.str.5, i32 0, i32 0
  %tmp.162 = icmp eq i8* %tmp.157, null
  %tmp.163 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.164 = select i1 %tmp.162, i8* %tmp.163, i8* %tmp.157
  %tmp.165 = icmp eq i8* %tmp.161, null
  %tmp.166 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.167 = select i1 %tmp.165, i8* %tmp.166, i8* %tmp.161
  %tmp.168 = call i64 @strlen(i8* %tmp.164)
  %tmp.169 = call i64 @strlen(i8* %tmp.167)
  %tmp.170 = add i64 %tmp.168, %tmp.169
  %tmp.171 = add i64 %tmp.170, 1
  %tmp.172 = call i8* @malloc(i64 %tmp.171)
  %tmp.173 = getelementptr i8, i8* %tmp.172, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.173, i8* align 1 %tmp.164, i64 %tmp.168, i1 false)
  %tmp.174 = getelementptr i8, i8* %tmp.172, i64 %tmp.168
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.174, i8* align 1 %tmp.167, i64 %tmp.169, i1 false)
  %tmp.175 = getelementptr i8, i8* %tmp.172, i64 %tmp.170
  store i8 0, i8* %tmp.175

  %tmp.176 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.177 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.176, i32 0, i32 6

  %tmp.178 = load i32, i32* %tmp.177
  %tmp.179 = alloca [21 x i8], align 1
  %tmp.180 = getelementptr inbounds [21 x i8], [21 x i8]* %tmp.179, i32 0, i32 0
  %tmp.181 = getelementptr inbounds [3 x i8], [3 x i8]* @.int_fmt, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %tmp.180, i8* %tmp.181, i32 %tmp.178)
  %tmp.182 = icmp eq i8* %tmp.172, null
  %tmp.183 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.184 = select i1 %tmp.182, i8* %tmp.183, i8* %tmp.172
  %tmp.185 = icmp eq i8* %tmp.180, null
  %tmp.186 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.187 = select i1 %tmp.185, i8* %tmp.186, i8* %tmp.180
  %tmp.188 = call i64 @strlen(i8* %tmp.184)
  %tmp.189 = call i64 @strlen(i8* %tmp.187)
  %tmp.190 = add i64 %tmp.188, %tmp.189
  %tmp.191 = add i64 %tmp.190, 1
  %tmp.192 = call i8* @malloc(i64 %tmp.191)
  %tmp.193 = getelementptr i8, i8* %tmp.192, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.193, i8* align 1 %tmp.184, i64 %tmp.188, i1 false)
  %tmp.194 = getelementptr i8, i8* %tmp.192, i64 %tmp.188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.194, i8* align 1 %tmp.187, i64 %tmp.189, i1 false)
  %tmp.195 = getelementptr i8, i8* %tmp.192, i64 %tmp.190
  store i8 0, i8* %tmp.195
  ret i8* %tmp.192
}
define i8* @"Sistema_Data_Data::Formatar"(%class.Sistema_Data_Data* %param.self, i8* %param.formato) { 
entry:
  %var.self = alloca %class.Sistema_Data_Data*, align 8
  store %class.Sistema_Data_Data* %param.self, %class.Sistema_Data_Data** %var.self
  %var.formato = alloca i8*, align 8
  store i8* %param.formato, i8** %var.formato
  unreachable ; O método 'Formatar' deve ter um retorno
}
define i1 @"Sistema_Data_Data::Igual"(%class.Sistema_Data_Data* %param.self, %class.Sistema_Data_Data* %param.outra) { 
entry:
  %var.self = alloca %class.Sistema_Data_Data*, align 8
  store %class.Sistema_Data_Data* %param.self, %class.Sistema_Data_Data** %var.self
  %var.outra = alloca %class.Sistema_Data_Data*, align 8
  store %class.Sistema_Data_Data* %param.outra, %class.Sistema_Data_Data** %var.outra

  %tmp.196 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.197 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.196, i32 0, i32 1

  %tmp.198 = load i32, i32* %tmp.197

  %tmp.199 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.outra
  %tmp.200 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.199, i32 0, i32 1

  %tmp.201 = load i32, i32* %tmp.200
  %tmp.202 = icmp eq i32 %tmp.198, %tmp.201

  %tmp.203 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.204 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.203, i32 0, i32 2

  %tmp.205 = load i32, i32* %tmp.204

  %tmp.206 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.outra
  %tmp.207 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.206, i32 0, i32 2

  %tmp.208 = load i32, i32* %tmp.207
  %tmp.209 = icmp eq i32 %tmp.205, %tmp.208
  %tmp.210 = and i1 %tmp.202, %tmp.209

  %tmp.211 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.212 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.211, i32 0, i32 3

  %tmp.213 = load i32, i32* %tmp.212

  %tmp.214 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.outra
  %tmp.215 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.214, i32 0, i32 3

  %tmp.216 = load i32, i32* %tmp.215
  %tmp.217 = icmp eq i32 %tmp.213, %tmp.216
  %tmp.218 = and i1 %tmp.210, %tmp.217

  %tmp.219 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.220 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.219, i32 0, i32 4

  %tmp.221 = load i32, i32* %tmp.220

  %tmp.222 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.outra
  %tmp.223 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.222, i32 0, i32 4

  %tmp.224 = load i32, i32* %tmp.223
  %tmp.225 = icmp eq i32 %tmp.221, %tmp.224
  %tmp.226 = and i1 %tmp.218, %tmp.225

  %tmp.227 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.228 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.227, i32 0, i32 5

  %tmp.229 = load i32, i32* %tmp.228

  %tmp.230 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.outra
  %tmp.231 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.230, i32 0, i32 5

  %tmp.232 = load i32, i32* %tmp.231
  %tmp.233 = icmp eq i32 %tmp.229, %tmp.232
  %tmp.234 = and i1 %tmp.226, %tmp.233

  %tmp.235 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.236 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.235, i32 0, i32 6

  %tmp.237 = load i32, i32* %tmp.236

  %tmp.238 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.outra
  %tmp.239 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.238, i32 0, i32 6

  %tmp.240 = load i32, i32* %tmp.239
  %tmp.241 = icmp eq i32 %tmp.237, %tmp.240
  %tmp.242 = and i1 %tmp.234, %tmp.241
  ret i1 %tmp.242
}
define void @"Sistema_Data_Data::construtor$3"(%class.Sistema_Data_Data* %param.self, i32 %param.ano, i32 %param.mes, i32 %param.dia) { 
entry:
  %var.self = alloca %class.Sistema_Data_Data*, align 8
  store %class.Sistema_Data_Data* %param.self, %class.Sistema_Data_Data** %var.self
  %var.ano = alloca i32, align 4
  store i32 %param.ano, i32* %var.ano
  %var.mes = alloca i32, align 4
  store i32 %param.mes, i32* %var.mes
  %var.dia = alloca i32, align 4
  store i32 %param.dia, i32* %var.dia

  %tmp.243 = load i32, i32* %var.ano

  %tmp.244 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.245 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.244, i32 0, i32 1
  store i32 %tmp.243, i32* %tmp.245

  %tmp.246 = load i32, i32* %var.mes

  %tmp.247 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.248 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.247, i32 0, i32 2
  store i32 %tmp.246, i32* %tmp.248

  %tmp.249 = load i32, i32* %var.dia

  %tmp.250 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.251 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.250, i32 0, i32 3
  store i32 %tmp.249, i32* %tmp.251

  %tmp.252 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.253 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.252, i32 0, i32 4
  store i32 0, i32* %tmp.253

  %tmp.254 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.255 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.254, i32 0, i32 5
  store i32 0, i32* %tmp.255

  %tmp.256 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.257 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.256, i32 0, i32 6
  store i32 0, i32* %tmp.257
  ret void
}
define void @"Sistema_Data_Data::construtor$6"(%class.Sistema_Data_Data* %param.self, i32 %param.ano, i32 %param.mes, i32 %param.dia, i32 %param.hora, i32 %param.minuto, i32 %param.segundo) { 
entry:
  %var.self = alloca %class.Sistema_Data_Data*, align 8
  store %class.Sistema_Data_Data* %param.self, %class.Sistema_Data_Data** %var.self
  %var.ano = alloca i32, align 4
  store i32 %param.ano, i32* %var.ano
  %var.mes = alloca i32, align 4
  store i32 %param.mes, i32* %var.mes
  %var.dia = alloca i32, align 4
  store i32 %param.dia, i32* %var.dia
  %var.hora = alloca i32, align 4
  store i32 %param.hora, i32* %var.hora
  %var.minuto = alloca i32, align 4
  store i32 %param.minuto, i32* %var.minuto
  %var.segundo = alloca i32, align 4
  store i32 %param.segundo, i32* %var.segundo

  %tmp.258 = load i32, i32* %var.ano

  %tmp.259 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.260 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.259, i32 0, i32 1
  store i32 %tmp.258, i32* %tmp.260

  %tmp.261 = load i32, i32* %var.mes

  %tmp.262 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.263 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.262, i32 0, i32 2
  store i32 %tmp.261, i32* %tmp.263

  %tmp.264 = load i32, i32* %var.dia

  %tmp.265 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.266 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.265, i32 0, i32 3
  store i32 %tmp.264, i32* %tmp.266

  %tmp.267 = load i32, i32* %var.hora

  %tmp.268 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.269 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.268, i32 0, i32 4
  store i32 %tmp.267, i32* %tmp.269

  %tmp.270 = load i32, i32* %var.minuto

  %tmp.271 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.272 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.271, i32 0, i32 5
  store i32 %tmp.270, i32* %tmp.272

  %tmp.273 = load i32, i32* %var.segundo

  %tmp.274 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.275 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.274, i32 0, i32 6
  store i32 %tmp.273, i32* %tmp.275
  ret void
}
define %class.Sistema_Data_Horario* @"Sistema_Data_Horario::DeSegundos"(%class.Sistema_Data_Horario* %param.self, i32 %param.segundos) { 
entry:
  %var.self = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario** %var.self
  %var.segundos = alloca i32, align 4
  store i32 %param.segundos, i32* %var.segundos
  unreachable ; O método 'DeSegundos' deve ter um retorno
}
define %class.Sistema_Data_Horario* @"Sistema_Data_Horario::DeMinutos"(%class.Sistema_Data_Horario* %param.self, i32 %param.minutos) { 
entry:
  %var.self = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario** %var.self
  %var.minutos = alloca i32, align 4
  store i32 %param.minutos, i32* %var.minutos
  unreachable ; O método 'DeMinutos' deve ter um retorno
}
define %class.Sistema_Data_Horario* @"Sistema_Data_Horario::DeHoras"(%class.Sistema_Data_Horario* %param.self, i32 %param.horas) { 
entry:
  %var.self = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario** %var.self
  %var.horas = alloca i32, align 4
  store i32 %param.horas, i32* %var.horas
  unreachable ; O método 'DeHoras' deve ter um retorno
}
define %class.Sistema_Data_Horario* @"Sistema_Data_Horario::DeDias"(%class.Sistema_Data_Horario* %param.self, i32 %param.dias) { 
entry:
  %var.self = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario** %var.self
  %var.dias = alloca i32, align 4
  store i32 %param.dias, i32* %var.dias
  unreachable ; O método 'DeDias' deve ter um retorno
}
define i32 @"Sistema_Data_Horario::TotalSegundos"(%class.Sistema_Data_Horario* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario** %var.self
  unreachable ; O método 'TotalSegundos' deve ter um retorno
}
define i32 @"Sistema_Data_Horario::TotalMinutos"(%class.Sistema_Data_Horario* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario** %var.self
  unreachable ; O método 'TotalMinutos' deve ter um retorno
}
define i32 @"Sistema_Data_Horario::TotalHoras"(%class.Sistema_Data_Horario* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario** %var.self
  unreachable ; O método 'TotalHoras' deve ter um retorno
}
define i32 @"Sistema_Data_Horario::TotalDias"(%class.Sistema_Data_Horario* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario** %var.self
  unreachable ; O método 'TotalDias' deve ter um retorno
}
define i8* @"Sistema_Data_Horario::ParaTexto"(%class.Sistema_Data_Horario* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario** %var.self
  unreachable ; O método 'ParaTexto' deve ter um retorno
}
define %class.Sistema_Data_Horario* @"Sistema_Data_Horario::Adicionar"(%class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario* %param.outro) { 
entry:
  %var.self = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario** %var.self
  %var.outro = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.outro, %class.Sistema_Data_Horario** %var.outro
  unreachable ; O método 'Adicionar' deve ter um retorno
}
define %class.Sistema_Data_Horario* @"Sistema_Data_Horario::Subtrair"(%class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario* %param.outro) { 
entry:
  %var.self = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario** %var.self
  %var.outro = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.outro, %class.Sistema_Data_Horario** %var.outro
  unreachable ; O método 'Subtrair' deve ter um retorno
}
define i1 @"Sistema_Data_Horario::Igual"(%class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario* %param.outro) { 
entry:
  %var.self = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario** %var.self
  %var.outro = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.outro, %class.Sistema_Data_Horario** %var.outro
  unreachable ; O método 'Igual' deve ter um retorno
}
define i1 @"Sistema_Data_Horario::MaiorQue"(%class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario* %param.outro) { 
entry:
  %var.self = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario** %var.self
  %var.outro = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.outro, %class.Sistema_Data_Horario** %var.outro
  unreachable ; O método 'MaiorQue' deve ter um retorno
}
define i1 @"Sistema_Data_Horario::MenorQue"(%class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario* %param.outro) { 
entry:
  %var.self = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario** %var.self
  %var.outro = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.outro, %class.Sistema_Data_Horario** %var.outro
  unreachable ; O método 'MenorQue' deve ter um retorno
}
define void @"Sistema_Data_Horario::construtor$1"(%class.Sistema_Data_Horario* %param.self, i32 %param.segundos) { 
entry:
  %var.self = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario** %var.self
  %var.segundos = alloca i32, align 4
  store i32 %param.segundos, i32* %var.segundos

  %tmp.276 = load i32, i32* %var.segundos

  %tmp.277 = load %class.Sistema_Data_Horario*, %class.Sistema_Data_Horario* %var.self
  %tmp.278 = getelementptr inbounds %class.Sistema_Data_Horario, %class.Sistema_Data_Horario* %tmp.277, i32 0, i32 1
  store i32 %tmp.276, i32* %tmp.278
  ret void
}
define void @"Sistema_Data_Horario::construtor$4"(%class.Sistema_Data_Horario* %param.self, i32 %param.dias, i32 %param.horas, i32 %param.minutos, i32 %param.segundos) { 
entry:
  %var.self = alloca %class.Sistema_Data_Horario*, align 8
  store %class.Sistema_Data_Horario* %param.self, %class.Sistema_Data_Horario** %var.self
  %var.dias = alloca i32, align 4
  store i32 %param.dias, i32* %var.dias
  %var.horas = alloca i32, align 4
  store i32 %param.horas, i32* %var.horas
  %var.minutos = alloca i32, align 4
  store i32 %param.minutos, i32* %var.minutos
  %var.segundos = alloca i32, align 4
  store i32 %param.segundos, i32* %var.segundos

  %tmp.279 = load i32, i32* %var.dias
  %tmp.280 = mul i32 %tmp.279, 86400

  %tmp.281 = load i32, i32* %var.horas
  %tmp.282 = mul i32 %tmp.281, 3600
  %tmp.283 = add i32 %tmp.280, %tmp.282

  %tmp.284 = load i32, i32* %var.minutos
  %tmp.285 = mul i32 %tmp.284, 60
  %tmp.286 = add i32 %tmp.283, %tmp.285

  %tmp.287 = load i32, i32* %var.segundos
  %tmp.288 = add i32 %tmp.286, %tmp.287

  %tmp.289 = load %class.Sistema_Data_Horario*, %class.Sistema_Data_Horario* %var.self
  %tmp.290 = getelementptr inbounds %class.Sistema_Data_Horario, %class.Sistema_Data_Horario* %tmp.289, i32 0, i32 1
  store i32 %tmp.288, i32* %tmp.290
  ret void
}
define void @"Sistema_Diagnostics_Cronometro::Iniciar"(%class.Sistema_Diagnostics_Cronometro* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Diagnostics_Cronometro*, align 8
  store %class.Sistema_Diagnostics_Cronometro* %param.self, %class.Sistema_Diagnostics_Cronometro** %var.self
  ret void
}
define void @"Sistema_Diagnostics_Cronometro::Parar"(%class.Sistema_Diagnostics_Cronometro* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Diagnostics_Cronometro*, align 8
  store %class.Sistema_Diagnostics_Cronometro* %param.self, %class.Sistema_Diagnostics_Cronometro** %var.self
  ret void
}
define void @"Sistema_Diagnostics_Cronometro::Reiniciar"(%class.Sistema_Diagnostics_Cronometro* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Diagnostics_Cronometro*, align 8
  store %class.Sistema_Diagnostics_Cronometro* %param.self, %class.Sistema_Diagnostics_Cronometro** %var.self
  ret void
}
define double @"Sistema_Diagnostics_Cronometro::DecorridoSegundos"(%class.Sistema_Diagnostics_Cronometro* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Diagnostics_Cronometro*, align 8
  store %class.Sistema_Diagnostics_Cronometro* %param.self, %class.Sistema_Diagnostics_Cronometro** %var.self
  unreachable ; O método 'DecorridoSegundos' deve ter um retorno
}
define i32 @"Sistema_Diagnostics_Cronometro::DecorridoMilissegundos"(%class.Sistema_Diagnostics_Cronometro* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Diagnostics_Cronometro*, align 8
  store %class.Sistema_Diagnostics_Cronometro* %param.self, %class.Sistema_Diagnostics_Cronometro** %var.self
  unreachable ; O método 'DecorridoMilissegundos' deve ter um retorno
}
define double @"Sistema_Diagnostics_Cronometro::Decorrido"(%class.Sistema_Diagnostics_Cronometro* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Diagnostics_Cronometro*, align 8
  store %class.Sistema_Diagnostics_Cronometro* %param.self, %class.Sistema_Diagnostics_Cronometro** %var.self
  unreachable ; O método 'Decorrido' deve ter um retorno
}
define i1 @"Sistema_Diagnostics_Cronometro::EstaExecutando"(%class.Sistema_Diagnostics_Cronometro* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Diagnostics_Cronometro*, align 8
  store %class.Sistema_Diagnostics_Cronometro* %param.self, %class.Sistema_Diagnostics_Cronometro** %var.self
  unreachable ; O método 'EstaExecutando' deve ter um retorno
}
define void @"Sistema_Diagnostics_Cronometro::construtor$0"(%class.Sistema_Diagnostics_Cronometro* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Diagnostics_Cronometro*, align 8
  store %class.Sistema_Diagnostics_Cronometro* %param.self, %class.Sistema_Diagnostics_Cronometro** %var.self
  ret void
}
define i8* @"Sistema_IO_Arquivo::LerTexto"(%class.Sistema_IO_Arquivo* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Arquivo*, align 8
  store %class.Sistema_IO_Arquivo* %param.self, %class.Sistema_IO_Arquivo** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  unreachable ; O método 'LerTexto' deve ter um retorno
}
define void @"Sistema_IO_Arquivo::EscreverTexto"(%class.Sistema_IO_Arquivo* %param.self, i8* %param.caminho, i8* %param.conteudo) { 
entry:
  %var.self = alloca %class.Sistema_IO_Arquivo*, align 8
  store %class.Sistema_IO_Arquivo* %param.self, %class.Sistema_IO_Arquivo** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  %var.conteudo = alloca i8*, align 8
  store i8* %param.conteudo, i8** %var.conteudo
  ret void
}
define void @"Sistema_IO_Arquivo::AdicionarTexto"(%class.Sistema_IO_Arquivo* %param.self, i8* %param.caminho, i8* %param.conteudo) { 
entry:
  %var.self = alloca %class.Sistema_IO_Arquivo*, align 8
  store %class.Sistema_IO_Arquivo* %param.self, %class.Sistema_IO_Arquivo** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  %var.conteudo = alloca i8*, align 8
  store i8* %param.conteudo, i8** %var.conteudo
  ret void
}
define i8* @"Sistema_IO_Arquivo::LerTextoAssincrono"(%class.Sistema_IO_Arquivo* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Arquivo*, align 8
  store %class.Sistema_IO_Arquivo* %param.self, %class.Sistema_IO_Arquivo** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  unreachable ; O método 'LerTextoAssincrono' deve ter um retorno
}
define void @"Sistema_IO_Arquivo::EscreverTextoAssincrono"(%class.Sistema_IO_Arquivo* %param.self, i8* %param.caminho, i8* %param.conteudo) { 
entry:
  %var.self = alloca %class.Sistema_IO_Arquivo*, align 8
  store %class.Sistema_IO_Arquivo* %param.self, %class.Sistema_IO_Arquivo** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  %var.conteudo = alloca i8*, align 8
  store i8* %param.conteudo, i8** %var.conteudo
  ret void
}
define void @"Sistema_IO_Arquivo::AdicionarTextoAssincrono"(%class.Sistema_IO_Arquivo* %param.self, i8* %param.caminho, i8* %param.conteudo) { 
entry:
  %var.self = alloca %class.Sistema_IO_Arquivo*, align 8
  store %class.Sistema_IO_Arquivo* %param.self, %class.Sistema_IO_Arquivo** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  %var.conteudo = alloca i8*, align 8
  store i8* %param.conteudo, i8** %var.conteudo
  ret void
}
define i1 @"Sistema_IO_Arquivo::Existe"(%class.Sistema_IO_Arquivo* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Arquivo*, align 8
  store %class.Sistema_IO_Arquivo* %param.self, %class.Sistema_IO_Arquivo** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  unreachable ; O método 'Existe' deve ter um retorno
}
define void @"Sistema_IO_Arquivo::Excluir"(%class.Sistema_IO_Arquivo* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Arquivo*, align 8
  store %class.Sistema_IO_Arquivo* %param.self, %class.Sistema_IO_Arquivo** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  ret void
}
define void @"Sistema_IO_Arquivo::Copiar"(%class.Sistema_IO_Arquivo* %param.self, i8* %param.origem, i8* %param.destino) { 
entry:
  %var.self = alloca %class.Sistema_IO_Arquivo*, align 8
  store %class.Sistema_IO_Arquivo* %param.self, %class.Sistema_IO_Arquivo** %var.self
  %var.origem = alloca i8*, align 8
  store i8* %param.origem, i8** %var.origem
  %var.destino = alloca i8*, align 8
  store i8* %param.destino, i8** %var.destino
  ret void
}
define void @"Sistema_IO_Arquivo::Mover"(%class.Sistema_IO_Arquivo* %param.self, i8* %param.origem, i8* %param.destino) { 
entry:
  %var.self = alloca %class.Sistema_IO_Arquivo*, align 8
  store %class.Sistema_IO_Arquivo* %param.self, %class.Sistema_IO_Arquivo** %var.self
  %var.origem = alloca i8*, align 8
  store i8* %param.origem, i8** %var.origem
  %var.destino = alloca i8*, align 8
  store i8* %param.destino, i8** %var.destino
  ret void
}
define i32 @"Sistema_IO_Arquivo::Tamanho"(%class.Sistema_IO_Arquivo* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Arquivo*, align 8
  store %class.Sistema_IO_Arquivo* %param.self, %class.Sistema_IO_Arquivo** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  unreachable ; O método 'Tamanho' deve ter um retorno
}
define void @"Sistema_IO_Arquivo::Criar"(%class.Sistema_IO_Arquivo* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Arquivo*, align 8
  store %class.Sistema_IO_Arquivo* %param.self, %class.Sistema_IO_Arquivo** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  ret void
}
define %array* @"Sistema_IO_Arquivo::LerLinhas"(%class.Sistema_IO_Arquivo* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Arquivo*, align 8
  store %class.Sistema_IO_Arquivo* %param.self, %class.Sistema_IO_Arquivo** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  unreachable ; O método 'LerLinhas' deve ter um retorno
}
define i1 @"Sistema_IO_Arquivo::ExisteAssincrono"(%class.Sistema_IO_Arquivo* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Arquivo*, align 8
  store %class.Sistema_IO_Arquivo* %param.self, %class.Sistema_IO_Arquivo** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  unreachable ; O método 'ExisteAssincrono' deve ter um retorno
}
define i8* @"Sistema_IO_Caminho::Combinar"(%class.Sistema_IO_Caminho* %param.self, i8* %param.caminho1, i8* %param.caminho2) { 
entry:
  %var.self = alloca %class.Sistema_IO_Caminho*, align 8
  store %class.Sistema_IO_Caminho* %param.self, %class.Sistema_IO_Caminho** %var.self
  %var.caminho1 = alloca i8*, align 8
  store i8* %param.caminho1, i8** %var.caminho1
  %var.caminho2 = alloca i8*, align 8
  store i8* %param.caminho2, i8** %var.caminho2
  unreachable ; O método 'Combinar' deve ter um retorno
}
define i8* @"Sistema_IO_Caminho::NomeArquivo"(%class.Sistema_IO_Caminho* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Caminho*, align 8
  store %class.Sistema_IO_Caminho* %param.self, %class.Sistema_IO_Caminho** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  unreachable ; O método 'NomeArquivo' deve ter um retorno
}
define i8* @"Sistema_IO_Caminho::NomeSemExtensao"(%class.Sistema_IO_Caminho* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Caminho*, align 8
  store %class.Sistema_IO_Caminho* %param.self, %class.Sistema_IO_Caminho** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  unreachable ; O método 'NomeSemExtensao' deve ter um retorno
}
define i8* @"Sistema_IO_Caminho::DiretorioPai"(%class.Sistema_IO_Caminho* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Caminho*, align 8
  store %class.Sistema_IO_Caminho* %param.self, %class.Sistema_IO_Caminho** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  unreachable ; O método 'DiretorioPai' deve ter um retorno
}
define i8* @"Sistema_IO_Caminho::Extensao"(%class.Sistema_IO_Caminho* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Caminho*, align 8
  store %class.Sistema_IO_Caminho* %param.self, %class.Sistema_IO_Caminho** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  unreachable ; O método 'Extensao' deve ter um retorno
}
define i8* @"Sistema_IO_Caminho::Absoluto"(%class.Sistema_IO_Caminho* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Caminho*, align 8
  store %class.Sistema_IO_Caminho* %param.self, %class.Sistema_IO_Caminho** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  unreachable ; O método 'Absoluto' deve ter um retorno
}
define i8* @"Sistema_IO_Caminho::Separadores"(%class.Sistema_IO_Caminho* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_IO_Caminho*, align 8
  store %class.Sistema_IO_Caminho* %param.self, %class.Sistema_IO_Caminho** %var.self
  unreachable ; O método 'Separadores' deve ter um retorno
}
define i8* @"Sistema_IO_Caminho::Separador"(%class.Sistema_IO_Caminho* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_IO_Caminho*, align 8
  store %class.Sistema_IO_Caminho* %param.self, %class.Sistema_IO_Caminho** %var.self
  unreachable ; O método 'Separador' deve ter um retorno
}
define i1 @"Sistema_IO_Diretorio::Existe"(%class.Sistema_IO_Diretorio* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Diretorio*, align 8
  store %class.Sistema_IO_Diretorio* %param.self, %class.Sistema_IO_Diretorio** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  unreachable ; O método 'Existe' deve ter um retorno
}
define void @"Sistema_IO_Diretorio::Criar"(%class.Sistema_IO_Diretorio* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Diretorio*, align 8
  store %class.Sistema_IO_Diretorio* %param.self, %class.Sistema_IO_Diretorio** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  ret void
}
define void @"Sistema_IO_Diretorio::Excluir"(%class.Sistema_IO_Diretorio* %param.self, i8* %param.caminho, i1 %param.recursivo) { 
entry:
  %var.self = alloca %class.Sistema_IO_Diretorio*, align 8
  store %class.Sistema_IO_Diretorio* %param.self, %class.Sistema_IO_Diretorio** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  %var.recursivo = alloca i1, align 1
  store i1 %param.recursivo, i1* %var.recursivo
  ret void
}
define i8* @"Sistema_IO_Diretorio::ObterAtual"(%class.Sistema_IO_Diretorio* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_IO_Diretorio*, align 8
  store %class.Sistema_IO_Diretorio* %param.self, %class.Sistema_IO_Diretorio** %var.self
  unreachable ; O método 'ObterAtual' deve ter um retorno
}
define void @"Sistema_IO_Diretorio::DefinirAtual"(%class.Sistema_IO_Diretorio* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Diretorio*, align 8
  store %class.Sistema_IO_Diretorio* %param.self, %class.Sistema_IO_Diretorio** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  ret void
}
define %array* @"Sistema_IO_Diretorio::ObterArquivos"(%class.Sistema_IO_Diretorio* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Diretorio*, align 8
  store %class.Sistema_IO_Diretorio* %param.self, %class.Sistema_IO_Diretorio** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  unreachable ; O método 'ObterArquivos' deve ter um retorno
}
define %array* @"Sistema_IO_Diretorio::ObterDiretorios"(%class.Sistema_IO_Diretorio* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Diretorio*, align 8
  store %class.Sistema_IO_Diretorio* %param.self, %class.Sistema_IO_Diretorio** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  unreachable ; O método 'ObterDiretorios' deve ter um retorno
}
define %class.Sistema_IO_InformacaoArquivo* @"Sistema_IO_InformacaoArquivo::Abrir"(%class.Sistema_IO_InformacaoArquivo* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_InformacaoArquivo*, align 8
  store %class.Sistema_IO_InformacaoArquivo* %param.self, %class.Sistema_IO_InformacaoArquivo** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  unreachable ; O método 'Abrir' deve ter um retorno
}
define i1 @"Sistema_IO_InformacaoArquivo::Existe"(%class.Sistema_IO_InformacaoArquivo* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_IO_InformacaoArquivo*, align 8
  store %class.Sistema_IO_InformacaoArquivo* %param.self, %class.Sistema_IO_InformacaoArquivo** %var.self
  unreachable ; O método 'Existe' deve ter um retorno
}
define i8* @"Sistema_IO_InformacaoArquivo::Nome"(%class.Sistema_IO_InformacaoArquivo* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_IO_InformacaoArquivo*, align 8
  store %class.Sistema_IO_InformacaoArquivo* %param.self, %class.Sistema_IO_InformacaoArquivo** %var.self
  unreachable ; O método 'Nome' deve ter um retorno
}
define i8* @"Sistema_IO_InformacaoArquivo::CaminhoCompleto"(%class.Sistema_IO_InformacaoArquivo* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_IO_InformacaoArquivo*, align 8
  store %class.Sistema_IO_InformacaoArquivo* %param.self, %class.Sistema_IO_InformacaoArquivo** %var.self
  unreachable ; O método 'CaminhoCompleto' deve ter um retorno
}
define i32 @"Sistema_IO_InformacaoArquivo::Tamanho"(%class.Sistema_IO_InformacaoArquivo* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_IO_InformacaoArquivo*, align 8
  store %class.Sistema_IO_InformacaoArquivo* %param.self, %class.Sistema_IO_InformacaoArquivo** %var.self
  unreachable ; O método 'Tamanho' deve ter um retorno
}
define i8* @"Sistema_IO_InformacaoArquivo::UltimaModificacao"(%class.Sistema_IO_InformacaoArquivo* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_IO_InformacaoArquivo*, align 8
  store %class.Sistema_IO_InformacaoArquivo* %param.self, %class.Sistema_IO_InformacaoArquivo** %var.self
  unreachable ; O método 'UltimaModificacao' deve ter um retorno
}
define i8* @"Sistema_IO_InformacaoArquivo::Diretorio"(%class.Sistema_IO_InformacaoArquivo* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_IO_InformacaoArquivo*, align 8
  store %class.Sistema_IO_InformacaoArquivo* %param.self, %class.Sistema_IO_InformacaoArquivo** %var.self
  unreachable ; O método 'Diretorio' deve ter um retorno
}
define %class.Sistema_IO_Leitor* @"Sistema_IO_Leitor::Abrir"(%class.Sistema_IO_Leitor* %param.self, i8* %param.caminho) { 
entry:
  %var.self = alloca %class.Sistema_IO_Leitor*, align 8
  store %class.Sistema_IO_Leitor* %param.self, %class.Sistema_IO_Leitor** %var.self
  %var.caminho = alloca i8*, align 8
  store i8* %param.caminho, i8** %var.caminho
  unreachable ; O método 'Abrir' deve ter um retorno
}
define i8* @"Sistema_IO_Leitor::LerLinha"(%class.Sistema_IO_Leitor* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_IO_Leitor*, align 8
  store %class.Sistema_IO_Leitor* %param.self, %class.Sistema_IO_Leitor** %var.self
  unreachable ; O método 'LerLinha' deve ter um retorno
}
define i8* @"Sistema_IO_Leitor::LerResto"(%class.Sistema_IO_Leitor* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_IO_Leitor*, align 8
  store %class.Sistema_IO_Leitor* %param.self, %class.Sistema_IO_Leitor** %var.self
  unreachable ; O método 'LerResto' deve ter um retorno
}
define i1 @"Sistema_IO_Leitor::EstaNoFim"(%class.Sistema_IO_Leitor* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_IO_Leitor*, align 8
  store %class.Sistema_IO_Leitor* %param.self, %class.Sistema_IO_Leitor** %var.self
  unreachable ; O método 'EstaNoFim' deve ter um retorno
}
define i1 @"Sistema_IO_Leitor::TemMais"(%class.Sistema_IO_Leitor* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_IO_Leitor*, align 8
  store %class.Sistema_IO_Leitor* %param.self, %class.Sistema_IO_Leitor** %var.self
  unreachable ; O método 'TemMais' deve ter um retorno
}
define void @"Sistema_IO_Leitor::Fechar"(%class.Sistema_IO_Leitor* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_IO_Leitor*, align 8
  store %class.Sistema_IO_Leitor* %param.self, %class.Sistema_IO_Leitor** %var.self
  ret void
}
define i8* @"Sistema_Rede_Dns::Resolver"(%class.Sistema_Rede_Dns* %param.self, i8* %param.host) { 
entry:
  %var.self = alloca %class.Sistema_Rede_Dns*, align 8
  store %class.Sistema_Rede_Dns* %param.self, %class.Sistema_Rede_Dns** %var.self
  %var.host = alloca i8*, align 8
  store i8* %param.host, i8** %var.host
  unreachable ; O método 'Resolver' deve ter um retorno
}
define %array* @"Sistema_Rede_Dns::ResolverTodos"(%class.Sistema_Rede_Dns* %param.self, i8* %param.host) { 
entry:
  %var.self = alloca %class.Sistema_Rede_Dns*, align 8
  store %class.Sistema_Rede_Dns* %param.self, %class.Sistema_Rede_Dns** %var.self
  %var.host = alloca i8*, align 8
  store i8* %param.host, i8** %var.host
  unreachable ; O método 'ResolverTodos' deve ter um retorno
}
define i8* @"Sistema_Rede_ClienteHttp::Obter"(%class.Sistema_Rede_ClienteHttp* %param.self, i8* %param.url) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ClienteHttp*, align 8
  store %class.Sistema_Rede_ClienteHttp* %param.self, %class.Sistema_Rede_ClienteHttp** %var.self
  %var.url = alloca i8*, align 8
  store i8* %param.url, i8** %var.url
  unreachable ; O método 'Obter' deve ter um retorno
}
define i8* @"Sistema_Rede_ClienteHttp::Enviar"(%class.Sistema_Rede_ClienteHttp* %param.self, i8* %param.url, i8* %param.corpo) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ClienteHttp*, align 8
  store %class.Sistema_Rede_ClienteHttp* %param.self, %class.Sistema_Rede_ClienteHttp** %var.self
  %var.url = alloca i8*, align 8
  store i8* %param.url, i8** %var.url
  %var.corpo = alloca i8*, align 8
  store i8* %param.corpo, i8** %var.corpo
  unreachable ; O método 'Enviar' deve ter um retorno
}
define i8* @"Sistema_Rede_ClienteHttp::Atualizar"(%class.Sistema_Rede_ClienteHttp* %param.self, i8* %param.url, i8* %param.corpo) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ClienteHttp*, align 8
  store %class.Sistema_Rede_ClienteHttp* %param.self, %class.Sistema_Rede_ClienteHttp** %var.self
  %var.url = alloca i8*, align 8
  store i8* %param.url, i8** %var.url
  %var.corpo = alloca i8*, align 8
  store i8* %param.corpo, i8** %var.corpo
  unreachable ; O método 'Atualizar' deve ter um retorno
}
define i8* @"Sistema_Rede_ClienteHttp::Excluir"(%class.Sistema_Rede_ClienteHttp* %param.self, i8* %param.url) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ClienteHttp*, align 8
  store %class.Sistema_Rede_ClienteHttp* %param.self, %class.Sistema_Rede_ClienteHttp** %var.self
  %var.url = alloca i8*, align 8
  store i8* %param.url, i8** %var.url
  unreachable ; O método 'Excluir' deve ter um retorno
}
define i8* @"Sistema_Rede_ClienteHttp::ObterAssincrono"(%class.Sistema_Rede_ClienteHttp* %param.self, i8* %param.url) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ClienteHttp*, align 8
  store %class.Sistema_Rede_ClienteHttp* %param.self, %class.Sistema_Rede_ClienteHttp** %var.self
  %var.url = alloca i8*, align 8
  store i8* %param.url, i8** %var.url
  unreachable ; O método 'ObterAssincrono' deve ter um retorno
}
define i8* @"Sistema_Rede_ClienteHttp::EnviarAssincrono"(%class.Sistema_Rede_ClienteHttp* %param.self, i8* %param.url, i8* %param.corpo) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ClienteHttp*, align 8
  store %class.Sistema_Rede_ClienteHttp* %param.self, %class.Sistema_Rede_ClienteHttp** %var.self
  %var.url = alloca i8*, align 8
  store i8* %param.url, i8** %var.url
  %var.corpo = alloca i8*, align 8
  store i8* %param.corpo, i8** %var.corpo
  unreachable ; O método 'EnviarAssincrono' deve ter um retorno
}
define i8* @"Sistema_Rede_ClienteHttp::AtualizarAssincrono"(%class.Sistema_Rede_ClienteHttp* %param.self, i8* %param.url, i8* %param.corpo) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ClienteHttp*, align 8
  store %class.Sistema_Rede_ClienteHttp* %param.self, %class.Sistema_Rede_ClienteHttp** %var.self
  %var.url = alloca i8*, align 8
  store i8* %param.url, i8** %var.url
  %var.corpo = alloca i8*, align 8
  store i8* %param.corpo, i8** %var.corpo
  unreachable ; O método 'AtualizarAssincrono' deve ter um retorno
}
define i8* @"Sistema_Rede_ClienteHttp::ExcluirAssincrono"(%class.Sistema_Rede_ClienteHttp* %param.self, i8* %param.url) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ClienteHttp*, align 8
  store %class.Sistema_Rede_ClienteHttp* %param.self, %class.Sistema_Rede_ClienteHttp** %var.self
  %var.url = alloca i8*, align 8
  store i8* %param.url, i8** %var.url
  unreachable ; O método 'ExcluirAssincrono' deve ter um retorno
}
define void @"Sistema_Rede_ClienteHttp::construtor$0"(%class.Sistema_Rede_ClienteHttp* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ClienteHttp*, align 8
  store %class.Sistema_Rede_ClienteHttp* %param.self, %class.Sistema_Rede_ClienteHttp** %var.self
  ret void
}
define void @"Sistema_Rede_ClienteHttp::construtor$1"(%class.Sistema_Rede_ClienteHttp* %param.self, i8* %param.baseUrl) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ClienteHttp*, align 8
  store %class.Sistema_Rede_ClienteHttp* %param.self, %class.Sistema_Rede_ClienteHttp** %var.self
  %var.baseUrl = alloca i8*, align 8
  store i8* %param.baseUrl, i8** %var.baseUrl

  %tmp.291 = load i8*, i8** %var.baseUrl

  %tmp.292 = load %class.Sistema_Rede_ClienteHttp*, %class.Sistema_Rede_ClienteHttp* %var.self
  %tmp.293 = getelementptr inbounds %class.Sistema_Rede_ClienteHttp, %class.Sistema_Rede_ClienteHttp* %tmp.292, i32 0, i32 1
  store i8* %tmp.291, i8** %tmp.293
  ret void
}
define %class.Sistema_Rede_SocketTcp* @"Sistema_Rede_SocketTcp::Conectar"(%class.Sistema_Rede_SocketTcp* %param.self, i8* %param.host, i32 %param.porta) { 
entry:
  %var.self = alloca %class.Sistema_Rede_SocketTcp*, align 8
  store %class.Sistema_Rede_SocketTcp* %param.self, %class.Sistema_Rede_SocketTcp** %var.self
  %var.host = alloca i8*, align 8
  store i8* %param.host, i8** %var.host
  %var.porta = alloca i32, align 4
  store i32 %param.porta, i32* %var.porta
  unreachable ; O método 'Conectar' deve ter um retorno
}
define void @"Sistema_Rede_SocketTcp::Enviar"(%class.Sistema_Rede_SocketTcp* %param.self, i8* %param.dados) { 
entry:
  %var.self = alloca %class.Sistema_Rede_SocketTcp*, align 8
  store %class.Sistema_Rede_SocketTcp* %param.self, %class.Sistema_Rede_SocketTcp** %var.self
  %var.dados = alloca i8*, align 8
  store i8* %param.dados, i8** %var.dados
  ret void
}
define i8* @"Sistema_Rede_SocketTcp::Receber"(%class.Sistema_Rede_SocketTcp* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Rede_SocketTcp*, align 8
  store %class.Sistema_Rede_SocketTcp* %param.self, %class.Sistema_Rede_SocketTcp** %var.self
  unreachable ; O método 'Receber' deve ter um retorno
}
define void @"Sistema_Rede_SocketTcp::Fechar"(%class.Sistema_Rede_SocketTcp* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Rede_SocketTcp*, align 8
  store %class.Sistema_Rede_SocketTcp* %param.self, %class.Sistema_Rede_SocketTcp** %var.self
  ret void
}
define i1 @"Sistema_Rede_SocketTcp::Conectado"(%class.Sistema_Rede_SocketTcp* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Rede_SocketTcp*, align 8
  store %class.Sistema_Rede_SocketTcp* %param.self, %class.Sistema_Rede_SocketTcp** %var.self
  unreachable ; O método 'Conectado' deve ter um retorno
}
define void @"Sistema_Rede_SocketTcp::construtor$0"(%class.Sistema_Rede_SocketTcp* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Rede_SocketTcp*, align 8
  store %class.Sistema_Rede_SocketTcp* %param.self, %class.Sistema_Rede_SocketTcp** %var.self
  ret void
}
define %class.Sistema_Rede_ServidorTcp* @"Sistema_Rede_ServidorTcp::Ouvir"(%class.Sistema_Rede_ServidorTcp* %param.self, i32 %param.porta) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ServidorTcp*, align 8
  store %class.Sistema_Rede_ServidorTcp* %param.self, %class.Sistema_Rede_ServidorTcp** %var.self
  %var.porta = alloca i32, align 4
  store i32 %param.porta, i32* %var.porta
  unreachable ; O método 'Ouvir' deve ter um retorno
}
define %class.Sistema_Rede_SocketTcp* @"Sistema_Rede_ServidorTcp::Aceitar"(%class.Sistema_Rede_ServidorTcp* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ServidorTcp*, align 8
  store %class.Sistema_Rede_ServidorTcp* %param.self, %class.Sistema_Rede_ServidorTcp** %var.self
  unreachable ; O método 'Aceitar' deve ter um retorno
}
define void @"Sistema_Rede_ServidorTcp::Fechar"(%class.Sistema_Rede_ServidorTcp* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ServidorTcp*, align 8
  store %class.Sistema_Rede_ServidorTcp* %param.self, %class.Sistema_Rede_ServidorTcp** %var.self
  ret void
}
define i1 @"Sistema_Rede_ServidorTcp::EstaAberto"(%class.Sistema_Rede_ServidorTcp* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ServidorTcp*, align 8
  store %class.Sistema_Rede_ServidorTcp* %param.self, %class.Sistema_Rede_ServidorTcp** %var.self
  unreachable ; O método 'EstaAberto' deve ter um retorno
}
define void @"Sistema_Rede_ServidorTcp::construtor$0"(%class.Sistema_Rede_ServidorTcp* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ServidorTcp*, align 8
  store %class.Sistema_Rede_ServidorTcp* %param.self, %class.Sistema_Rede_ServidorTcp** %var.self
  ret void
}
define %array* @"Sistema_Texto_Codificacao::ParaBytes"(%class.Sistema_Texto_Codificacao* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Codificacao*, align 8
  store %class.Sistema_Texto_Codificacao* %param.self, %class.Sistema_Texto_Codificacao** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'ParaBytes' deve ter um retorno
}
define i8* @"Sistema_Texto_Codificacao::ParaTexto"(%class.Sistema_Texto_Codificacao* %param.self, %array* %param.bytes) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Codificacao*, align 8
  store %class.Sistema_Texto_Codificacao* %param.self, %class.Sistema_Texto_Codificacao** %var.self
  %var.bytes = alloca %array*, align 8
  store %array* %param.bytes, %array** %var.bytes
  unreachable ; O método 'ParaTexto' deve ter um retorno
}
define i32 @"Sistema_Texto_Codificacao::TamanhoBytes"(%class.Sistema_Texto_Codificacao* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Codificacao*, align 8
  store %class.Sistema_Texto_Codificacao* %param.self, %class.Sistema_Texto_Codificacao** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'TamanhoBytes' deve ter um retorno
}
define void @"Sistema_Texto_ConstrutorTexto::Anexar"(%class.Sistema_Texto_ConstrutorTexto* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Texto_ConstrutorTexto*, align 8
  store %class.Sistema_Texto_ConstrutorTexto* %param.self, %class.Sistema_Texto_ConstrutorTexto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  ret void
}
define void @"Sistema_Texto_ConstrutorTexto::AnexarLinha"(%class.Sistema_Texto_ConstrutorTexto* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Texto_ConstrutorTexto*, align 8
  store %class.Sistema_Texto_ConstrutorTexto* %param.self, %class.Sistema_Texto_ConstrutorTexto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  ret void
}
define i8* @"Sistema_Texto_ConstrutorTexto::ParaTexto"(%class.Sistema_Texto_ConstrutorTexto* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Texto_ConstrutorTexto*, align 8
  store %class.Sistema_Texto_ConstrutorTexto* %param.self, %class.Sistema_Texto_ConstrutorTexto** %var.self
  unreachable ; O método 'ParaTexto' deve ter um retorno
}
define void @"Sistema_Texto_ConstrutorTexto::Limpar"(%class.Sistema_Texto_ConstrutorTexto* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Texto_ConstrutorTexto*, align 8
  store %class.Sistema_Texto_ConstrutorTexto* %param.self, %class.Sistema_Texto_ConstrutorTexto** %var.self
  ret void
}
define i32 @"Sistema_Texto_ConstrutorTexto::Comprimento"(%class.Sistema_Texto_ConstrutorTexto* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Texto_ConstrutorTexto*, align 8
  store %class.Sistema_Texto_ConstrutorTexto* %param.self, %class.Sistema_Texto_ConstrutorTexto** %var.self
  unreachable ; O método 'Comprimento' deve ter um retorno
}
define void @"Sistema_Texto_ConstrutorTexto::construtor$0"(%class.Sistema_Texto_ConstrutorTexto* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Texto_ConstrutorTexto*, align 8
  store %class.Sistema_Texto_ConstrutorTexto* %param.self, %class.Sistema_Texto_ConstrutorTexto** %var.self
  ret void
}
define i8* @"Sistema_Texto_Json::Serializar"(%class.Sistema_Texto_Json* %param.self, %class.objeto* %param.obj) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Json*, align 8
  store %class.Sistema_Texto_Json* %param.self, %class.Sistema_Texto_Json** %var.self
  %var.obj = alloca %class.objeto*, align 8
  store %class.objeto* %param.obj, %class.objeto** %var.obj
  unreachable ; O método 'Serializar' deve ter um retorno
}
define i1 @"Sistema_Texto_Json::ValidarJson"(%class.Sistema_Texto_Json* %param.self, i8* %param.json) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Json*, align 8
  store %class.Sistema_Texto_Json* %param.self, %class.Sistema_Texto_Json** %var.self
  %var.json = alloca i8*, align 8
  store i8* %param.json, i8** %var.json
  unreachable ; O método 'ValidarJson' deve ter um retorno
}
define i8* @"Sistema_Texto_Json::Formatar"(%class.Sistema_Texto_Json* %param.self, i8* %param.json) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Json*, align 8
  store %class.Sistema_Texto_Json* %param.self, %class.Sistema_Texto_Json** %var.self
  %var.json = alloca i8*, align 8
  store i8* %param.json, i8** %var.json
  unreachable ; O método 'Formatar' deve ter um retorno
}
define %class.objeto* @"Sistema_Texto_Json::Desserializar"(%class.Sistema_Texto_Json* %param.self, i8* %param.json) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Json*, align 8
  store %class.Sistema_Texto_Json* %param.self, %class.Sistema_Texto_Json** %var.self
  %var.json = alloca i8*, align 8
  store i8* %param.json, i8** %var.json
  unreachable ; O método 'Desserializar' deve ter um retorno
}
define i1 @"Sistema_Texto_Regex::Corresponde"(%class.Sistema_Texto_Regex* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Regex*, align 8
  store %class.Sistema_Texto_Regex* %param.self, %class.Sistema_Texto_Regex** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'Corresponde' deve ter um retorno
}
define i32 @"Sistema_Texto_Regex::Localizar"(%class.Sistema_Texto_Regex* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Regex*, align 8
  store %class.Sistema_Texto_Regex* %param.self, %class.Sistema_Texto_Regex** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'Localizar' deve ter um retorno
}
define i8* @"Sistema_Texto_Regex::Substituir"(%class.Sistema_Texto_Regex* %param.self, i8* %param.valor, i8* %param.substituto) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Regex*, align 8
  store %class.Sistema_Texto_Regex* %param.self, %class.Sistema_Texto_Regex** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  %var.substituto = alloca i8*, align 8
  store i8* %param.substituto, i8** %var.substituto
  unreachable ; O método 'Substituir' deve ter um retorno
}
define %array* @"Sistema_Texto_Regex::Dividir"(%class.Sistema_Texto_Regex* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Regex*, align 8
  store %class.Sistema_Texto_Regex* %param.self, %class.Sistema_Texto_Regex** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'Dividir' deve ter um retorno
}
define i32 @"Sistema_Texto_Regex::Contar"(%class.Sistema_Texto_Regex* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Regex*, align 8
  store %class.Sistema_Texto_Regex* %param.self, %class.Sistema_Texto_Regex** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'Contar' deve ter um retorno
}
define i8* @"Sistema_Texto_Regex::Escape"(%class.Sistema_Texto_Regex* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Regex*, align 8
  store %class.Sistema_Texto_Regex* %param.self, %class.Sistema_Texto_Regex** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'Escape' deve ter um retorno
}
define i1 @"Sistema_Texto_Regex::EhValido"(%class.Sistema_Texto_Regex* %param.self, i8* %param.padrao) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Regex*, align 8
  store %class.Sistema_Texto_Regex* %param.self, %class.Sistema_Texto_Regex** %var.self
  %var.padrao = alloca i8*, align 8
  store i8* %param.padrao, i8** %var.padrao
  unreachable ; O método 'EhValido' deve ter um retorno
}
define void @"Sistema_Texto_Regex::construtor$1"(%class.Sistema_Texto_Regex* %param.self, i8* %param.padrao) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Regex*, align 8
  store %class.Sistema_Texto_Regex* %param.self, %class.Sistema_Texto_Regex** %var.self
  %var.padrao = alloca i8*, align 8
  store i8* %param.padrao, i8** %var.padrao

  %tmp.294 = load i8*, i8** %var.padrao

  %tmp.295 = load %class.Sistema_Texto_Regex*, %class.Sistema_Texto_Regex* %var.self
  %tmp.296 = getelementptr inbounds %class.Sistema_Texto_Regex, %class.Sistema_Texto_Regex* %tmp.295, i32 0, i32 1
  store i8* %tmp.294, i8** %tmp.296
  ret void
}
define %array* @"Sistema_Texto_Texto::Dividir"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor, i8* %param.separador) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  %var.separador = alloca i8*, align 8
  store i8* %param.separador, i8** %var.separador
  unreachable ; O método 'Dividir' deve ter um retorno
}
define %array* @"Sistema_Texto_Texto::DividirLinhas"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'DividirLinhas' deve ter um retorno
}
define i8* @"Sistema_Texto_Texto::Juntar"(%class.Sistema_Texto_Texto* %param.self, %array* %param.partes, i8* %param.separador) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.partes = alloca %array*, align 8
  store %array* %param.partes, %array** %var.partes
  %var.separador = alloca i8*, align 8
  store i8* %param.separador, i8** %var.separador
  unreachable ; O método 'Juntar' deve ter um retorno
}
define i8* @"Sistema_Texto_Texto::RemoverEspacos"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'RemoverEspacos' deve ter um retorno
}
define i8* @"Sistema_Texto_Texto::ParaMaiusculas"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'ParaMaiusculas' deve ter um retorno
}
define i8* @"Sistema_Texto_Texto::ParaMinusculas"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'ParaMinusculas' deve ter um retorno
}
define i8* @"Sistema_Texto_Texto::Substituir"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor, i8* %param.antigo, i8* %param.substituto) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  %var.antigo = alloca i8*, align 8
  store i8* %param.antigo, i8** %var.antigo
  %var.substituto = alloca i8*, align 8
  store i8* %param.substituto, i8** %var.substituto
  unreachable ; O método 'Substituir' deve ter um retorno
}
define i1 @"Sistema_Texto_Texto::ComecaCom"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor, i8* %param.prefixo) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  %var.prefixo = alloca i8*, align 8
  store i8* %param.prefixo, i8** %var.prefixo
  unreachable ; O método 'ComecaCom' deve ter um retorno
}
define i1 @"Sistema_Texto_Texto::TerminaCom"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor, i8* %param.sufixo) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  %var.sufixo = alloca i8*, align 8
  store i8* %param.sufixo, i8** %var.sufixo
  unreachable ; O método 'TerminaCom' deve ter um retorno
}
define i1 @"Sistema_Texto_Texto::Contem"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor, i8* %param.trecho) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  %var.trecho = alloca i8*, align 8
  store i8* %param.trecho, i8** %var.trecho
  unreachable ; O método 'Contem' deve ter um retorno
}
define i1 @"Sistema_Texto_Texto::VazioOuNulo"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'VazioOuNulo' deve ter um retorno
}
define i32 @"Sistema_Texto_Texto::Tamanho"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'Tamanho' deve ter um retorno
}
define i8* @"Sistema_Texto_Texto::Subtexto"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor, i32 %param.inicio, i32 %param.comprimento) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  %var.inicio = alloca i32, align 4
  store i32 %param.inicio, i32* %var.inicio
  %var.comprimento = alloca i32, align 4
  store i32 %param.comprimento, i32* %var.comprimento
  unreachable ; O método 'Subtexto' deve ter um retorno
}
define i32 @"Sistema_Texto_Texto::IndiceDe"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor, i8* %param.trecho) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  %var.trecho = alloca i8*, align 8
  store i8* %param.trecho, i8** %var.trecho
  unreachable ; O método 'IndiceDe' deve ter um retorno
}
define i32 @"Sistema_Texto_Texto::UltimoIndiceDe"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor, i8* %param.trecho) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  %var.trecho = alloca i8*, align 8
  store i8* %param.trecho, i8** %var.trecho
  unreachable ; O método 'UltimoIndiceDe' deve ter um retorno
}
define i8* @"Sistema_Texto_Texto::Inverter"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'Inverter' deve ter um retorno
}
define i8* @"Sistema_Texto_Texto::PadEsquerda"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor, i32 %param.largura, i8* %param.preenchimento) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  %var.largura = alloca i32, align 4
  store i32 %param.largura, i32* %var.largura
  %var.preenchimento = alloca i8*, align 8
  store i8* %param.preenchimento, i8** %var.preenchimento
  unreachable ; O método 'PadEsquerda' deve ter um retorno
}
define i8* @"Sistema_Texto_Texto::PadDireita"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor, i32 %param.largura, i8* %param.preenchimento) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  %var.largura = alloca i32, align 4
  store i32 %param.largura, i32* %var.largura
  %var.preenchimento = alloca i8*, align 8
  store i8* %param.preenchimento, i8** %var.preenchimento
  unreachable ; O método 'PadDireita' deve ter um retorno
}
define i32 @"Sistema_Texto_Texto::ContarOcorrencias"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor, i8* %param.trecho) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  %var.trecho = alloca i8*, align 8
  store i8* %param.trecho, i8** %var.trecho
  unreachable ; O método 'ContarOcorrencias' deve ter um retorno
}
define i1 @"Sistema_Texto_Texto::EstaVazia"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  unreachable ; O método 'EstaVazia' deve ter um retorno
}
define i8* @"Sistema_Texto_Texto::Repete"(%class.Sistema_Texto_Texto* %param.self, i8* %param.valor, i32 %param.vezes) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.valor = alloca i8*, align 8
  store i8* %param.valor, i8** %var.valor
  %var.vezes = alloca i32, align 4
  store i32 %param.vezes, i32* %var.vezes
  unreachable ; O método 'Repete' deve ter um retorno
}
define i32 @"Sistema_Texto_Texto::Comparar"(%class.Sistema_Texto_Texto* %param.self, i8* %param.a, i8* %param.b) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.a = alloca i8*, align 8
  store i8* %param.a, i8** %var.a
  %var.b = alloca i8*, align 8
  store i8* %param.b, i8** %var.b
  unreachable ; O método 'Comparar' deve ter um retorno
}
define i1 @"Sistema_Texto_Texto::IgualIgnoreCase"(%class.Sistema_Texto_Texto* %param.self, i8* %param.a, i8* %param.b) { 
entry:
  %var.self = alloca %class.Sistema_Texto_Texto*, align 8
  store %class.Sistema_Texto_Texto* %param.self, %class.Sistema_Texto_Texto** %var.self
  %var.a = alloca i8*, align 8
  store i8* %param.a, i8** %var.a
  %var.b = alloca i8*, align 8
  store i8* %param.b, i8** %var.b
  unreachable ; O método 'IgualIgnoreCase' deve ter um retorno
}
define void @"Sistema_Threading_Mutex::Entrar"(%class.Sistema_Threading_Mutex* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Threading_Mutex*, align 8
  store %class.Sistema_Threading_Mutex* %param.self, %class.Sistema_Threading_Mutex** %var.self
  ret void
}
define i1 @"Sistema_Threading_Mutex::TentarEntrar"(%class.Sistema_Threading_Mutex* %param.self, i32 %param.milissegundos) { 
entry:
  %var.self = alloca %class.Sistema_Threading_Mutex*, align 8
  store %class.Sistema_Threading_Mutex* %param.self, %class.Sistema_Threading_Mutex** %var.self
  %var.milissegundos = alloca i32, align 4
  store i32 %param.milissegundos, i32* %var.milissegundos
  unreachable ; O método 'TentarEntrar' deve ter um retorno
}
define void @"Sistema_Threading_Mutex::Sair"(%class.Sistema_Threading_Mutex* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Threading_Mutex*, align 8
  store %class.Sistema_Threading_Mutex* %param.self, %class.Sistema_Threading_Mutex** %var.self
  ret void
}
define i1 @"Sistema_Threading_Mutex::EstaTravado"(%class.Sistema_Threading_Mutex* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Threading_Mutex*, align 8
  store %class.Sistema_Threading_Mutex* %param.self, %class.Sistema_Threading_Mutex** %var.self
  unreachable ; O método 'EstaTravado' deve ter um retorno
}
define void @"Sistema_Threading_Mutex::Fechar"(%class.Sistema_Threading_Mutex* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Threading_Mutex*, align 8
  store %class.Sistema_Threading_Mutex* %param.self, %class.Sistema_Threading_Mutex** %var.self
  ret void
}
define void @"Sistema_Threading_Mutex::construtor$0"(%class.Sistema_Threading_Mutex* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Threading_Mutex*, align 8
  store %class.Sistema_Threading_Mutex* %param.self, %class.Sistema_Threading_Mutex** %var.self
  ret void
}
define i32 @"Sistema_Threading_PoolTarefas::ObterMaximoParalelismo"(%class.Sistema_Threading_PoolTarefas* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Threading_PoolTarefas*, align 8
  store %class.Sistema_Threading_PoolTarefas* %param.self, %class.Sistema_Threading_PoolTarefas** %var.self
  unreachable ; O método 'ObterMaximoParalelismo' deve ter um retorno
}
define void @"Sistema_Threading_PoolTarefas::DefinirMaximoParalelismo"(%class.Sistema_Threading_PoolTarefas* %param.self, i32 %param.maximo) { 
entry:
  %var.self = alloca %class.Sistema_Threading_PoolTarefas*, align 8
  store %class.Sistema_Threading_PoolTarefas* %param.self, %class.Sistema_Threading_PoolTarefas** %var.self
  %var.maximo = alloca i32, align 4
  store i32 %param.maximo, i32* %var.maximo
  ret void
}
define void @"Sistema_Threading_Tarefa::Atraso"(%class.Sistema_Threading_Tarefa* %param.self, i32 %param.milissegundos) { 
entry:
  %var.self = alloca %class.Sistema_Threading_Tarefa*, align 8
  store %class.Sistema_Threading_Tarefa* %param.self, %class.Sistema_Threading_Tarefa** %var.self
  %var.milissegundos = alloca i32, align 4
  store i32 %param.milissegundos, i32* %var.milissegundos
  ret void
}
define %class.objeto* @"Sistema_Threading_Tarefa::DeResultado"(%class.Sistema_Threading_Tarefa* %param.self, %class.objeto* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Threading_Tarefa*, align 8
  store %class.Sistema_Threading_Tarefa* %param.self, %class.Sistema_Threading_Tarefa** %var.self
  %var.valor = alloca %class.objeto*, align 8
  store %class.objeto* %param.valor, %class.objeto** %var.valor
  unreachable ; O método 'DeResultado' deve ter um retorno
}
define void @"Sistema_Threading_Temporizador::Aguardar"(%class.Sistema_Threading_Temporizador* %param.self, i32 %param.milissegundos) { 
entry:
  %var.self = alloca %class.Sistema_Threading_Temporizador*, align 8
  store %class.Sistema_Threading_Temporizador* %param.self, %class.Sistema_Threading_Temporizador** %var.self
  %var.milissegundos = alloca i32, align 4
  store i32 %param.milissegundos, i32* %var.milissegundos
  ret void
}
