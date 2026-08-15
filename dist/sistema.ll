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
%class.Sistema_Colecoes_Dicionario = type { i8**, i32, i32 }
%class.Sistema_Colecoes_Lista = type { i8**, %array*, i32, i32, i32, i32 }
%class.Sistema_Console = type { i8** }
%class.Sistema_Data_Data = type { i8**, i32, i32, i32, i32, i32, i32 }
%class.Sistema_IO_Arquivo = type { i8** }
%class.Sistema_IO_Diretorio = type { i8** }
%class.Sistema_Rede_ClienteHttp = type { i8**, i8* }
%class.Sistema_Texto_Json = type { i8** }
%class.objeto = type { i8** }
@.vtable.Sistema_Colecoes_Dicionario = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Colecoes_Lista = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Console = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Data_Data = global [0 x i8*] [  ], align 8
@.vtable.Sistema_IO_Arquivo = global [0 x i8*] [  ], align 8
@.vtable.Sistema_IO_Diretorio = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Rede_ClienteHttp = global [0 x i8*] [  ], align 8
@.vtable.Sistema_Texto_Json = global [0 x i8*] [  ], align 8
@.vtable.objeto = global [0 x i8*] [  ], align 8
@.str.0 = private unnamed_addr constant [25 x i8] c"Índice fora dos limites\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Índice fora dos limites\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] c"\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
define void @"Sistema_Colecoes_Dicionario::Adicionar"(%class.Sistema_Colecoes_Dicionario* %param.self, %class.TChave* %param.chave, %class.TValor* %param.valor) { 
entry:
  %var.self = alloca %class.Sistema_Colecoes_Dicionario*, align 8
  store %class.Sistema_Colecoes_Dicionario* %param.self, %class.Sistema_Colecoes_Dicionario** %var.self
  %var.chave = alloca %class.TChave*, align 8
  store %class.TChave* %param.chave, %class.TChave** %var.chave
  %var.valor = alloca %class.TValor*, align 8
  store %class.TValor* %param.valor, %class.TValor** %var.valor
  ret void
}
define %class.TValor* @"Sistema_Colecoes_Dicionario::Obter"(%class.Sistema_Colecoes_Dicionario* %param.self, %class.TChave* %param.chave) { 
entry:
  %var.self = alloca %class.Sistema_Colecoes_Dicionario*, align 8
  store %class.Sistema_Colecoes_Dicionario* %param.self, %class.Sistema_Colecoes_Dicionario** %var.self
  %var.chave = alloca %class.TChave*, align 8
  store %class.TChave* %param.chave, %class.TChave** %var.chave
  unreachable ; O método 'Obter' deve ter um retorno
}
define i1 @"Sistema_Colecoes_Dicionario::ContemChave"(%class.Sistema_Colecoes_Dicionario* %param.self, %class.TChave* %param.chave) { 
entry:
  %var.self = alloca %class.Sistema_Colecoes_Dicionario*, align 8
  store %class.Sistema_Colecoes_Dicionario* %param.self, %class.Sistema_Colecoes_Dicionario** %var.self
  %var.chave = alloca %class.TChave*, align 8
  store %class.TChave* %param.chave, %class.TChave** %var.chave
  unreachable ; O método 'ContemChave' deve ter um retorno
}
define i1 @"Sistema_Colecoes_Dicionario::Remover"(%class.Sistema_Colecoes_Dicionario* %param.self, %class.TChave* %param.chave) { 
entry:
  %var.self = alloca %class.Sistema_Colecoes_Dicionario*, align 8
  store %class.Sistema_Colecoes_Dicionario* %param.self, %class.Sistema_Colecoes_Dicionario** %var.self
  %var.chave = alloca %class.TChave*, align 8
  store %class.TChave* %param.chave, %class.TChave** %var.chave
  unreachable ; O método 'Remover' deve ter um retorno
}
define void @"Sistema_Colecoes_Dicionario::Limpar"(%class.Sistema_Colecoes_Dicionario* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Colecoes_Dicionario*, align 8
  store %class.Sistema_Colecoes_Dicionario* %param.self, %class.Sistema_Colecoes_Dicionario** %var.self
  ret void
}
define void @"Sistema_Colecoes_Dicionario::construtor$0"(%class.Sistema_Colecoes_Dicionario* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Colecoes_Dicionario*, align 8
  store %class.Sistema_Colecoes_Dicionario* %param.self, %class.Sistema_Colecoes_Dicionario** %var.self

  %tmp.0 = load %class.Sistema_Colecoes_Dicionario*, %class.Sistema_Colecoes_Dicionario* %var.self
  %tmp.1 = getelementptr inbounds %class.Sistema_Colecoes_Dicionario, %class.Sistema_Colecoes_Dicionario* %tmp.0, i32 0, i32 1
  store i32 0, i32* %tmp.1
  ret void
}
define void @"Sistema_Colecoes_Lista::Adicionar"(%class.Sistema_Colecoes_Lista* %param.self, %class.T* %param.item) { 
entry:
  %var.self = alloca %class.Sistema_Colecoes_Lista*, align 8
  store %class.Sistema_Colecoes_Lista* %param.self, %class.Sistema_Colecoes_Lista** %var.self
  %var.item = alloca %class.T*, align 8
  store %class.T* %param.item, %class.T** %var.item

  %tmp.2 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.3 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.2, i32 0, i32 2

  %tmp.4 = load i32, i32* %tmp.3

  %tmp.5 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.6 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.5, i32 0, i32 3

  %tmp.7 = load i32, i32* %tmp.6
  %tmp.8 = icmp sge i32 %tmp.4, %tmp.7
  br i1 %tmp.8, label %then.9, label %end.11
then.9:

  %tmp.12 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  call void @"Sistema_Colecoes_Lista::RedimensionarArray"(%class.Sistema_Colecoes_Lista* %tmp.12)
  br label %end.11
end.11:

  %tmp.13 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.14 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.13, i32 0, i32 1

  %tmp.15 = load %array*, %array** %tmp.14

  %tmp.16 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.17 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.16, i32 0, i32 2

  %tmp.18 = load i32, i32* %tmp.17

  %tmp.19 = load %class.T*, %class.T* %var.item
  %tmp.20 = getelementptr inbounds %array, %array* %tmp.15, i32 0, i32 0
  %tmp.21 = load i32, i32* %tmp.20
  %tmp.22 = getelementptr inbounds %array, %array* %tmp.15, i32 0, i32 1
  %tmp.23 = load i8*, i8** %tmp.22
  %tmp.24 = icmp slt i32 %tmp.18, 0
  %tmp.25 = icmp sge i32 %tmp.18, %tmp.21
  %tmp.26 = or i1 %tmp.24, %tmp.25
  br i1 %tmp.26, label %idx.oob.28, label %idx.ok.27
idx.oob.28:
  %tmp.30 = getelementptr inbounds [23 x i8], [23 x i8]* @.oob_msg, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.println_fmt, i32 0, i32 0), i8* %tmp.30)
  br label %idx.end.29
idx.ok.27:
  %tmp.31 = bitcast i8* %tmp.23 to %class.T**
  %tmp.32 = getelementptr inbounds %class.T*, %class.T** %tmp.31, i32 %tmp.18
  store %class.T* %tmp.19, %class.T** %tmp.32
  br label %idx.end.29
idx.end.29:

  %tmp.33 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.34 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.33, i32 0, i32 2

  %tmp.35 = load i32, i32* %tmp.34
  %tmp.36 = add i32 %tmp.35, 1

  %tmp.37 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.38 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.37, i32 0, i32 2
  store i32 %tmp.36, i32* %tmp.38
  ret void
}
define %class.T* @"Sistema_Colecoes_Lista::Obter"(%class.Sistema_Colecoes_Lista* %param.self, i32 %param.indice) { 
entry:
  %var.self = alloca %class.Sistema_Colecoes_Lista*, align 8
  store %class.Sistema_Colecoes_Lista* %param.self, %class.Sistema_Colecoes_Lista** %var.self
  %var.indice = alloca i32, align 4
  store i32 %param.indice, i32* %var.indice

  %tmp.39 = load i32, i32* %var.indice
  %tmp.40 = icmp slt i32 %tmp.39, 0

  %tmp.41 = load i32, i32* %var.indice

  %tmp.42 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.43 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.42, i32 0, i32 2

  %tmp.44 = load i32, i32* %tmp.43
  %tmp.45 = icmp sge i32 %tmp.41, %tmp.44
  %tmp.46 = or i1 %tmp.40, %tmp.45
  br i1 %tmp.46, label %then.47, label %end.49
then.47:
  %tmp.50 = getelementptr inbounds [25 x i8], [25 x i8]* @.str.0, i32 0, i32 0
  %tmp.51 = icmp eq i8* %tmp.50, null
  %tmp.52 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.53 = select i1 %tmp.51, i8* %tmp.52, i8* %tmp.50
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.println_fmt, i32 0, i32 0), i8* %tmp.53)
  %tmp.54 = getelementptr i8, i8* null, i32 0
  ret %class.objeto* %tmp.54
  br label %end.49
end.49:

  %tmp.55 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.56 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.55, i32 0, i32 1

  %tmp.57 = load %array*, %array** %tmp.56

  %tmp.58 = load i32, i32* %var.indice
  %tmp.59 = getelementptr inbounds %array, %array* %tmp.57, i32 0, i32 0
  %tmp.60 = load i32, i32* %tmp.59
  %tmp.61 = getelementptr inbounds %array, %array* %tmp.57, i32 0, i32 1
  %tmp.62 = load i8*, i8** %tmp.61
  %tmp.63 = icmp slt i32 %tmp.58, 0
  %tmp.64 = icmp sge i32 %tmp.58, %tmp.60
  %tmp.65 = or i1 %tmp.63, %tmp.64
  br i1 %tmp.65, label %idx.oob.67, label %idx.ok.66
idx.oob.67:
  %tmp.69 = getelementptr inbounds [23 x i8], [23 x i8]* @.oob_msg, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.println_fmt, i32 0, i32 0), i8* %tmp.69)
  br label %idx.end.68
idx.ok.66:
  %tmp.70 = bitcast i8* %tmp.62 to %class.T**
  %tmp.71 = getelementptr inbounds %class.T*, %class.T** %tmp.70, i32 %tmp.58
  %tmp.72 = load %class.T*, %class.T** %tmp.71
  br label %idx.end.68
idx.end.68:
  %tmp.73 = phi %class.T* [ null, %idx.oob.67 ], [ %tmp.72, %idx.ok.66 ]
  ret %class.T* %tmp.73
}
define void @"Sistema_Colecoes_Lista::Definir"(%class.Sistema_Colecoes_Lista* %param.self, i32 %param.indice, %class.T* %param.item) { 
entry:
  %var.self = alloca %class.Sistema_Colecoes_Lista*, align 8
  store %class.Sistema_Colecoes_Lista* %param.self, %class.Sistema_Colecoes_Lista** %var.self
  %var.indice = alloca i32, align 4
  store i32 %param.indice, i32* %var.indice
  %var.item = alloca %class.T*, align 8
  store %class.T* %param.item, %class.T** %var.item

  %tmp.74 = load i32, i32* %var.indice
  %tmp.75 = icmp slt i32 %tmp.74, 0

  %tmp.76 = load i32, i32* %var.indice

  %tmp.77 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.78 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.77, i32 0, i32 2

  %tmp.79 = load i32, i32* %tmp.78
  %tmp.80 = icmp sge i32 %tmp.76, %tmp.79
  %tmp.81 = or i1 %tmp.75, %tmp.80
  br i1 %tmp.81, label %then.82, label %end.84
then.82:
  %tmp.85 = getelementptr inbounds [25 x i8], [25 x i8]* @.str.1, i32 0, i32 0
  %tmp.86 = icmp eq i8* %tmp.85, null
  %tmp.87 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.88 = select i1 %tmp.86, i8* %tmp.87, i8* %tmp.85
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.println_fmt, i32 0, i32 0), i8* %tmp.88)
  ret void
  br label %end.84
end.84:

  %tmp.89 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.90 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.89, i32 0, i32 1

  %tmp.91 = load %array*, %array** %tmp.90

  %tmp.92 = load i32, i32* %var.indice

  %tmp.93 = load %class.T*, %class.T* %var.item
  %tmp.94 = getelementptr inbounds %array, %array* %tmp.91, i32 0, i32 0
  %tmp.95 = load i32, i32* %tmp.94
  %tmp.96 = getelementptr inbounds %array, %array* %tmp.91, i32 0, i32 1
  %tmp.97 = load i8*, i8** %tmp.96
  %tmp.98 = icmp slt i32 %tmp.92, 0
  %tmp.99 = icmp sge i32 %tmp.92, %tmp.95
  %tmp.100 = or i1 %tmp.98, %tmp.99
  br i1 %tmp.100, label %idx.oob.102, label %idx.ok.101
idx.oob.102:
  %tmp.104 = getelementptr inbounds [23 x i8], [23 x i8]* @.oob_msg, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.println_fmt, i32 0, i32 0), i8* %tmp.104)
  br label %idx.end.103
idx.ok.101:
  %tmp.105 = bitcast i8* %tmp.97 to %class.T**
  %tmp.106 = getelementptr inbounds %class.T*, %class.T** %tmp.105, i32 %tmp.92
  store %class.T* %tmp.93, %class.T** %tmp.106
  br label %idx.end.103
idx.end.103:
  ret void
}
define void @"Sistema_Colecoes_Lista::RemoverEm"(%class.Sistema_Colecoes_Lista* %param.self, i32 %param.indice) { 
entry:
  %var.self = alloca %class.Sistema_Colecoes_Lista*, align 8
  store %class.Sistema_Colecoes_Lista* %param.self, %class.Sistema_Colecoes_Lista** %var.self
  %var.indice = alloca i32, align 4
  store i32 %param.indice, i32* %var.indice

  %tmp.107 = load i32, i32* %var.indice
  %tmp.108 = icmp slt i32 %tmp.107, 0

  %tmp.109 = load i32, i32* %var.indice

  %tmp.110 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.111 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.110, i32 0, i32 2

  %tmp.112 = load i32, i32* %tmp.111
  %tmp.113 = icmp sge i32 %tmp.109, %tmp.112
  %tmp.114 = or i1 %tmp.108, %tmp.113
  br i1 %tmp.114, label %then.115, label %end.117
then.115:
  ret void
  br label %end.117
end.117:

  %tmp.118 = load i32, i32* %var.indice
  %var.i = alloca i32, align 4
  store i32 %tmp.118, i32* %var.i
  br label %loop.cond.119
loop.cond.119:

  %tmp.122 = load i32, i32* %var.i

  %tmp.123 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.124 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.123, i32 0, i32 2

  %tmp.125 = load i32, i32* %tmp.124
  %tmp.126 = sub i32 %tmp.125, 1
  %tmp.127 = icmp slt i32 %tmp.122, %tmp.126
  br i1 %tmp.127, label %loop.body.120, label %loop.end.121
loop.body.120:

  %tmp.128 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.129 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.128, i32 0, i32 1

  %tmp.130 = load %array*, %array** %tmp.129

  %tmp.131 = load i32, i32* %var.i

  %tmp.132 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.133 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.132, i32 0, i32 1

  %tmp.134 = load %array*, %array** %tmp.133

  %tmp.135 = load i32, i32* %var.i
  %tmp.136 = add i32 %tmp.135, 1
  %tmp.137 = getelementptr inbounds %array, %array* %tmp.134, i32 0, i32 0
  %tmp.138 = load i32, i32* %tmp.137
  %tmp.139 = getelementptr inbounds %array, %array* %tmp.134, i32 0, i32 1
  %tmp.140 = load i8*, i8** %tmp.139
  %tmp.141 = icmp slt i32 %tmp.136, 0
  %tmp.142 = icmp sge i32 %tmp.136, %tmp.138
  %tmp.143 = or i1 %tmp.141, %tmp.142
  br i1 %tmp.143, label %idx.oob.145, label %idx.ok.144
idx.oob.145:
  %tmp.147 = getelementptr inbounds [23 x i8], [23 x i8]* @.oob_msg, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.println_fmt, i32 0, i32 0), i8* %tmp.147)
  br label %idx.end.146
idx.ok.144:
  %tmp.148 = bitcast i8* %tmp.140 to %class.T**
  %tmp.149 = getelementptr inbounds %class.T*, %class.T** %tmp.148, i32 %tmp.136
  %tmp.150 = load %class.T*, %class.T** %tmp.149
  br label %idx.end.146
idx.end.146:
  %tmp.151 = phi %class.T* [ null, %idx.oob.145 ], [ %tmp.150, %idx.ok.144 ]
  %tmp.152 = getelementptr inbounds %array, %array* %tmp.130, i32 0, i32 0
  %tmp.153 = load i32, i32* %tmp.152
  %tmp.154 = getelementptr inbounds %array, %array* %tmp.130, i32 0, i32 1
  %tmp.155 = load i8*, i8** %tmp.154
  %tmp.156 = icmp slt i32 %tmp.131, 0
  %tmp.157 = icmp sge i32 %tmp.131, %tmp.153
  %tmp.158 = or i1 %tmp.156, %tmp.157
  br i1 %tmp.158, label %idx.oob.160, label %idx.ok.159
idx.oob.160:
  %tmp.162 = getelementptr inbounds [23 x i8], [23 x i8]* @.oob_msg, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.println_fmt, i32 0, i32 0), i8* %tmp.162)
  br label %idx.end.161
idx.ok.159:
  %tmp.163 = bitcast i8* %tmp.155 to %class.T**
  %tmp.164 = getelementptr inbounds %class.T*, %class.T** %tmp.163, i32 %tmp.131
  store %class.T* %tmp.151, %class.T** %tmp.164
  br label %idx.end.161
idx.end.161:

  %tmp.165 = load i32, i32* %var.i
  %tmp.166 = add i32 %tmp.165, 1
  store i32 %tmp.166, i32* %var.i
  br label %loop.cond.119
loop.end.121:

  %tmp.167 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.168 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.167, i32 0, i32 2

  %tmp.169 = load i32, i32* %tmp.168
  %tmp.170 = sub i32 %tmp.169, 1

  %tmp.171 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.172 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.171, i32 0, i32 2
  store i32 %tmp.170, i32* %tmp.172
  ret void
}
define i1 @"Sistema_Colecoes_Lista::Remover"(%class.Sistema_Colecoes_Lista* %param.self, %class.T* %param.item) { 
entry:
  %var.self = alloca %class.Sistema_Colecoes_Lista*, align 8
  store %class.Sistema_Colecoes_Lista* %param.self, %class.Sistema_Colecoes_Lista** %var.self
  %var.item = alloca %class.T*, align 8
  store %class.T* %param.item, %class.T** %var.item
  %var.i = alloca i32, align 4
  store i32 0, i32* %var.i
  br label %loop.cond.173
loop.cond.173:

  %tmp.176 = load i32, i32* %var.i

  %tmp.177 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.178 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.177, i32 0, i32 2

  %tmp.179 = load i32, i32* %tmp.178
  %tmp.180 = icmp slt i32 %tmp.176, %tmp.179
  br i1 %tmp.180, label %loop.body.174, label %loop.end.175
loop.body.174:

  %tmp.181 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.182 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.181, i32 0, i32 1

  %tmp.183 = load %array*, %array** %tmp.182

  %tmp.184 = load i32, i32* %var.i
  %tmp.185 = getelementptr inbounds %array, %array* %tmp.183, i32 0, i32 0
  %tmp.186 = load i32, i32* %tmp.185
  %tmp.187 = getelementptr inbounds %array, %array* %tmp.183, i32 0, i32 1
  %tmp.188 = load i8*, i8** %tmp.187
  %tmp.189 = icmp slt i32 %tmp.184, 0
  %tmp.190 = icmp sge i32 %tmp.184, %tmp.186
  %tmp.191 = or i1 %tmp.189, %tmp.190
  br i1 %tmp.191, label %idx.oob.193, label %idx.ok.192
idx.oob.193:
  %tmp.195 = getelementptr inbounds [23 x i8], [23 x i8]* @.oob_msg, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.println_fmt, i32 0, i32 0), i8* %tmp.195)
  br label %idx.end.194
idx.ok.192:
  %tmp.196 = bitcast i8* %tmp.188 to %class.T**
  %tmp.197 = getelementptr inbounds %class.T*, %class.T** %tmp.196, i32 %tmp.184
  %tmp.198 = load %class.T*, %class.T** %tmp.197
  br label %idx.end.194
idx.end.194:
  %tmp.199 = phi %class.T* [ null, %idx.oob.193 ], [ %tmp.198, %idx.ok.192 ]

  %tmp.200 = load %class.T*, %class.T* %var.item
  %tmp.201 = icmp eq i8* %tmp.199, %tmp.200
  br i1 %tmp.201, label %then.202, label %end.204
then.202:

  %tmp.205 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self

  %tmp.206 = load i32, i32* %var.i
  call void @"Sistema_Colecoes_Lista::RemoverEm"(%class.Sistema_Colecoes_Lista* %tmp.205, i32 %tmp.206)
  ret i1 1
  br label %end.204
end.204:

  %tmp.207 = load i32, i32* %var.i
  %tmp.208 = add i32 %tmp.207, 1
  store i32 %tmp.208, i32* %var.i
  br label %loop.cond.173
loop.end.175:
  ret i1 0
}
define i1 @"Sistema_Colecoes_Lista::Contem"(%class.Sistema_Colecoes_Lista* %param.self, %class.T* %param.item) { 
entry:
  %var.self = alloca %class.Sistema_Colecoes_Lista*, align 8
  store %class.Sistema_Colecoes_Lista* %param.self, %class.Sistema_Colecoes_Lista** %var.self
  %var.item = alloca %class.T*, align 8
  store %class.T* %param.item, %class.T** %var.item
  %var.i = alloca i32, align 4
  store i32 0, i32* %var.i
  br label %loop.cond.209
loop.cond.209:

  %tmp.212 = load i32, i32* %var.i

  %tmp.213 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.214 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.213, i32 0, i32 2

  %tmp.215 = load i32, i32* %tmp.214
  %tmp.216 = icmp slt i32 %tmp.212, %tmp.215
  br i1 %tmp.216, label %loop.body.210, label %loop.end.211
loop.body.210:

  %tmp.217 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.218 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.217, i32 0, i32 1

  %tmp.219 = load %array*, %array** %tmp.218

  %tmp.220 = load i32, i32* %var.i
  %tmp.221 = getelementptr inbounds %array, %array* %tmp.219, i32 0, i32 0
  %tmp.222 = load i32, i32* %tmp.221
  %tmp.223 = getelementptr inbounds %array, %array* %tmp.219, i32 0, i32 1
  %tmp.224 = load i8*, i8** %tmp.223
  %tmp.225 = icmp slt i32 %tmp.220, 0
  %tmp.226 = icmp sge i32 %tmp.220, %tmp.222
  %tmp.227 = or i1 %tmp.225, %tmp.226
  br i1 %tmp.227, label %idx.oob.229, label %idx.ok.228
idx.oob.229:
  %tmp.231 = getelementptr inbounds [23 x i8], [23 x i8]* @.oob_msg, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.println_fmt, i32 0, i32 0), i8* %tmp.231)
  br label %idx.end.230
idx.ok.228:
  %tmp.232 = bitcast i8* %tmp.224 to %class.T**
  %tmp.233 = getelementptr inbounds %class.T*, %class.T** %tmp.232, i32 %tmp.220
  %tmp.234 = load %class.T*, %class.T** %tmp.233
  br label %idx.end.230
idx.end.230:
  %tmp.235 = phi %class.T* [ null, %idx.oob.229 ], [ %tmp.234, %idx.ok.228 ]

  %tmp.236 = load %class.T*, %class.T* %var.item
  %tmp.237 = icmp eq i8* %tmp.235, %tmp.236
  br i1 %tmp.237, label %then.238, label %end.240
then.238:
  ret i1 1
  br label %end.240
end.240:

  %tmp.241 = load i32, i32* %var.i
  %tmp.242 = add i32 %tmp.241, 1
  store i32 %tmp.242, i32* %var.i
  br label %loop.cond.209
loop.end.211:
  ret i1 0
}
define void @"Sistema_Colecoes_Lista::Limpar"(%class.Sistema_Colecoes_Lista* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Colecoes_Lista*, align 8
  store %class.Sistema_Colecoes_Lista* %param.self, %class.Sistema_Colecoes_Lista** %var.self

  %tmp.243 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.244 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.243, i32 0, i32 2
  store i32 0, i32* %tmp.244
  ret void
}
define i32 @"Sistema_Colecoes_Lista::IndiceDe"(%class.Sistema_Colecoes_Lista* %param.self, %class.T* %param.item) { 
entry:
  %var.self = alloca %class.Sistema_Colecoes_Lista*, align 8
  store %class.Sistema_Colecoes_Lista* %param.self, %class.Sistema_Colecoes_Lista** %var.self
  %var.item = alloca %class.T*, align 8
  store %class.T* %param.item, %class.T** %var.item
  %var.i = alloca i32, align 4
  store i32 0, i32* %var.i
  br label %loop.cond.245
loop.cond.245:

  %tmp.248 = load i32, i32* %var.i

  %tmp.249 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.250 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.249, i32 0, i32 2

  %tmp.251 = load i32, i32* %tmp.250
  %tmp.252 = icmp slt i32 %tmp.248, %tmp.251
  br i1 %tmp.252, label %loop.body.246, label %loop.end.247
loop.body.246:

  %tmp.253 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.254 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.253, i32 0, i32 1

  %tmp.255 = load %array*, %array** %tmp.254

  %tmp.256 = load i32, i32* %var.i
  %tmp.257 = getelementptr inbounds %array, %array* %tmp.255, i32 0, i32 0
  %tmp.258 = load i32, i32* %tmp.257
  %tmp.259 = getelementptr inbounds %array, %array* %tmp.255, i32 0, i32 1
  %tmp.260 = load i8*, i8** %tmp.259
  %tmp.261 = icmp slt i32 %tmp.256, 0
  %tmp.262 = icmp sge i32 %tmp.256, %tmp.258
  %tmp.263 = or i1 %tmp.261, %tmp.262
  br i1 %tmp.263, label %idx.oob.265, label %idx.ok.264
idx.oob.265:
  %tmp.267 = getelementptr inbounds [23 x i8], [23 x i8]* @.oob_msg, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.println_fmt, i32 0, i32 0), i8* %tmp.267)
  br label %idx.end.266
idx.ok.264:
  %tmp.268 = bitcast i8* %tmp.260 to %class.T**
  %tmp.269 = getelementptr inbounds %class.T*, %class.T** %tmp.268, i32 %tmp.256
  %tmp.270 = load %class.T*, %class.T** %tmp.269
  br label %idx.end.266
idx.end.266:
  %tmp.271 = phi %class.T* [ null, %idx.oob.265 ], [ %tmp.270, %idx.ok.264 ]

  %tmp.272 = load %class.T*, %class.T* %var.item
  %tmp.273 = icmp eq i8* %tmp.271, %tmp.272
  br i1 %tmp.273, label %then.274, label %end.276
then.274:

  %tmp.277 = load i32, i32* %var.i
  ret i32 %tmp.277
  br label %end.276
end.276:

  %tmp.278 = load i32, i32* %var.i
  %tmp.279 = add i32 %tmp.278, 1
  store i32 %tmp.279, i32* %var.i
  br label %loop.cond.245
loop.end.247:
  %tmp.280 = sub i32 0, 1
  ret i32 %tmp.280
}
define void @"Sistema_Colecoes_Lista::RedimensionarArray"(%class.Sistema_Colecoes_Lista* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Colecoes_Lista*, align 8
  store %class.Sistema_Colecoes_Lista* %param.self, %class.Sistema_Colecoes_Lista** %var.self

  %tmp.281 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.282 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.281, i32 0, i32 3

  %tmp.283 = load i32, i32* %tmp.282
  %tmp.284 = mul i32 %tmp.283, 2

  %tmp.285 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.286 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.285, i32 0, i32 3
  store i32 %tmp.284, i32* %tmp.286
  %tmp.287 = call i8* @malloc(i64 16)
  %tmp.288 = getelementptr inbounds [2 x i32], [2 x i32]* %tmp.287, i32 0, i32 0
  store i32 0, i32* %tmp.288
  %tmp.289 = getelementptr inbounds [2 x i32], [2 x i32]* %tmp.287, i32 0, i32 1
  store i8* null, i8** %tmp.289
  %var.novosItens = alloca %array*, align 8
  store %array* %tmp.287, %array** %var.novosItens
  %var.i = alloca i32, align 4
  store i32 0, i32* %var.i
  br label %loop.cond.290
loop.cond.290:

  %tmp.293 = load i32, i32* %var.i

  %tmp.294 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.295 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.294, i32 0, i32 2

  %tmp.296 = load i32, i32* %tmp.295
  %tmp.297 = icmp slt i32 %tmp.293, %tmp.296
  br i1 %tmp.297, label %loop.body.291, label %loop.end.292
loop.body.291:

  %tmp.298 = load %array*, %array** %var.novosItens

  %tmp.299 = load i32, i32* %var.i

  %tmp.300 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.301 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.300, i32 0, i32 1

  %tmp.302 = load %array*, %array** %tmp.301

  %tmp.303 = load i32, i32* %var.i
  %tmp.304 = getelementptr inbounds %array, %array* %tmp.302, i32 0, i32 0
  %tmp.305 = load i32, i32* %tmp.304
  %tmp.306 = getelementptr inbounds %array, %array* %tmp.302, i32 0, i32 1
  %tmp.307 = load i8*, i8** %tmp.306
  %tmp.308 = icmp slt i32 %tmp.303, 0
  %tmp.309 = icmp sge i32 %tmp.303, %tmp.305
  %tmp.310 = or i1 %tmp.308, %tmp.309
  br i1 %tmp.310, label %idx.oob.312, label %idx.ok.311
idx.oob.312:
  %tmp.314 = getelementptr inbounds [23 x i8], [23 x i8]* @.oob_msg, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.println_fmt, i32 0, i32 0), i8* %tmp.314)
  br label %idx.end.313
idx.ok.311:
  %tmp.315 = bitcast i8* %tmp.307 to %class.T**
  %tmp.316 = getelementptr inbounds %class.T*, %class.T** %tmp.315, i32 %tmp.303
  %tmp.317 = load %class.T*, %class.T** %tmp.316
  br label %idx.end.313
idx.end.313:
  %tmp.318 = phi %class.T* [ null, %idx.oob.312 ], [ %tmp.317, %idx.ok.311 ]
  %tmp.319 = getelementptr inbounds %array, %array* %tmp.298, i32 0, i32 0
  %tmp.320 = load i32, i32* %tmp.319
  %tmp.321 = getelementptr inbounds %array, %array* %tmp.298, i32 0, i32 1
  %tmp.322 = load i8*, i8** %tmp.321
  %tmp.323 = icmp slt i32 %tmp.299, 0
  %tmp.324 = icmp sge i32 %tmp.299, %tmp.320
  %tmp.325 = or i1 %tmp.323, %tmp.324
  br i1 %tmp.325, label %idx.oob.327, label %idx.ok.326
idx.oob.327:
  %tmp.329 = getelementptr inbounds [23 x i8], [23 x i8]* @.oob_msg, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.println_fmt, i32 0, i32 0), i8* %tmp.329)
  br label %idx.end.328
idx.ok.326:
  %tmp.330 = bitcast i8* %tmp.322 to %class.T**
  %tmp.331 = getelementptr inbounds %class.T*, %class.T** %tmp.330, i32 %tmp.299
  store %class.T* %tmp.318, %class.T** %tmp.331
  br label %idx.end.328
idx.end.328:

  %tmp.332 = load i32, i32* %var.i
  %tmp.333 = add i32 %tmp.332, 1
  store i32 %tmp.333, i32* %var.i
  br label %loop.cond.290
loop.end.292:

  %tmp.334 = load %array*, %array** %var.novosItens

  %tmp.335 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.336 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.335, i32 0, i32 1
  store %array* %tmp.334, %array** %tmp.336
  ret void
}
define void @"Sistema_Colecoes_Lista::construtor$0"(%class.Sistema_Colecoes_Lista* %param.self) { 
entry:
  %var.self = alloca %class.Sistema_Colecoes_Lista*, align 8
  store %class.Sistema_Colecoes_Lista* %param.self, %class.Sistema_Colecoes_Lista** %var.self

  %tmp.337 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.338 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.337, i32 0, i32 3
  store i32 4, i32* %tmp.338
  %tmp.339 = call i8* @malloc(i64 16)
  %tmp.340 = getelementptr inbounds [2 x i32], [2 x i32]* %tmp.339, i32 0, i32 0
  store i32 0, i32* %tmp.340
  %tmp.341 = getelementptr inbounds [2 x i32], [2 x i32]* %tmp.339, i32 0, i32 1
  store i8* null, i8** %tmp.341

  %tmp.342 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.343 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.342, i32 0, i32 1
  store %array* %tmp.339, %array** %tmp.343

  %tmp.344 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.345 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.344, i32 0, i32 2
  store i32 0, i32* %tmp.345
  ret void
}
define void @"Sistema_Colecoes_Lista::construtor$1"(%class.Sistema_Colecoes_Lista* %param.self, i32 %param.capacidadeInicial) { 
entry:
  %var.self = alloca %class.Sistema_Colecoes_Lista*, align 8
  store %class.Sistema_Colecoes_Lista* %param.self, %class.Sistema_Colecoes_Lista** %var.self
  %var.capacidadeInicial = alloca i32, align 4
  store i32 %param.capacidadeInicial, i32* %var.capacidadeInicial

  %tmp.346 = load i32, i32* %var.capacidadeInicial

  %tmp.347 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.348 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.347, i32 0, i32 3
  store i32 %tmp.346, i32* %tmp.348
  %tmp.349 = call i8* @malloc(i64 16)
  %tmp.350 = getelementptr inbounds [2 x i32], [2 x i32]* %tmp.349, i32 0, i32 0
  store i32 0, i32* %tmp.350
  %tmp.351 = getelementptr inbounds [2 x i32], [2 x i32]* %tmp.349, i32 0, i32 1
  store i8* null, i8** %tmp.351

  %tmp.352 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.353 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.352, i32 0, i32 1
  store %array* %tmp.349, %array** %tmp.353

  %tmp.354 = load %class.Sistema_Colecoes_Lista*, %class.Sistema_Colecoes_Lista* %var.self
  %tmp.355 = getelementptr inbounds %class.Sistema_Colecoes_Lista, %class.Sistema_Colecoes_Lista* %tmp.354, i32 0, i32 2
  store i32 0, i32* %tmp.355
  ret void
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
  %tmp.356 = getelementptr inbounds [1 x i8], [1 x i8]* @.str.2, i32 0, i32 0

  %tmp.357 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.358 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.357, i32 0, i32 3

  %tmp.359 = load i32, i32* %tmp.358
  %tmp.360 = alloca [21 x i8], align 1
  %tmp.361 = getelementptr inbounds [21 x i8], [21 x i8]* %tmp.360, i32 0, i32 0
  %tmp.362 = getelementptr inbounds [3 x i8], [3 x i8]* @.int_fmt, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %tmp.361, i8* %tmp.362, i32 %tmp.359)
  %tmp.363 = icmp eq i8* %tmp.356, null
  %tmp.364 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.365 = select i1 %tmp.363, i8* %tmp.364, i8* %tmp.356
  %tmp.366 = icmp eq i8* %tmp.361, null
  %tmp.367 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.368 = select i1 %tmp.366, i8* %tmp.367, i8* %tmp.361
  %tmp.369 = call i64 @strlen(i8* %tmp.365)
  %tmp.370 = call i64 @strlen(i8* %tmp.368)
  %tmp.371 = add i64 %tmp.369, %tmp.370
  %tmp.372 = add i64 %tmp.371, 1
  %tmp.373 = call i8* @malloc(i64 %tmp.372)
  %tmp.374 = getelementptr i8, i8* %tmp.373, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.374, i8* align 1 %tmp.365, i64 %tmp.369, i1 false)
  %tmp.375 = getelementptr i8, i8* %tmp.373, i64 %tmp.369
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.375, i8* align 1 %tmp.368, i64 %tmp.370, i1 false)
  %tmp.376 = getelementptr i8, i8* %tmp.373, i64 %tmp.371
  store i8 0, i8* %tmp.376
  %tmp.377 = getelementptr inbounds [2 x i8], [2 x i8]* @.str.3, i32 0, i32 0
  %tmp.378 = icmp eq i8* %tmp.373, null
  %tmp.379 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.380 = select i1 %tmp.378, i8* %tmp.379, i8* %tmp.373
  %tmp.381 = icmp eq i8* %tmp.377, null
  %tmp.382 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.383 = select i1 %tmp.381, i8* %tmp.382, i8* %tmp.377
  %tmp.384 = call i64 @strlen(i8* %tmp.380)
  %tmp.385 = call i64 @strlen(i8* %tmp.383)
  %tmp.386 = add i64 %tmp.384, %tmp.385
  %tmp.387 = add i64 %tmp.386, 1
  %tmp.388 = call i8* @malloc(i64 %tmp.387)
  %tmp.389 = getelementptr i8, i8* %tmp.388, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.389, i8* align 1 %tmp.380, i64 %tmp.384, i1 false)
  %tmp.390 = getelementptr i8, i8* %tmp.388, i64 %tmp.384
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.390, i8* align 1 %tmp.383, i64 %tmp.385, i1 false)
  %tmp.391 = getelementptr i8, i8* %tmp.388, i64 %tmp.386
  store i8 0, i8* %tmp.391

  %tmp.392 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.393 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.392, i32 0, i32 2

  %tmp.394 = load i32, i32* %tmp.393
  %tmp.395 = alloca [21 x i8], align 1
  %tmp.396 = getelementptr inbounds [21 x i8], [21 x i8]* %tmp.395, i32 0, i32 0
  %tmp.397 = getelementptr inbounds [3 x i8], [3 x i8]* @.int_fmt, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %tmp.396, i8* %tmp.397, i32 %tmp.394)
  %tmp.398 = icmp eq i8* %tmp.388, null
  %tmp.399 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.400 = select i1 %tmp.398, i8* %tmp.399, i8* %tmp.388
  %tmp.401 = icmp eq i8* %tmp.396, null
  %tmp.402 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.403 = select i1 %tmp.401, i8* %tmp.402, i8* %tmp.396
  %tmp.404 = call i64 @strlen(i8* %tmp.400)
  %tmp.405 = call i64 @strlen(i8* %tmp.403)
  %tmp.406 = add i64 %tmp.404, %tmp.405
  %tmp.407 = add i64 %tmp.406, 1
  %tmp.408 = call i8* @malloc(i64 %tmp.407)
  %tmp.409 = getelementptr i8, i8* %tmp.408, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.409, i8* align 1 %tmp.400, i64 %tmp.404, i1 false)
  %tmp.410 = getelementptr i8, i8* %tmp.408, i64 %tmp.404
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.410, i8* align 1 %tmp.403, i64 %tmp.405, i1 false)
  %tmp.411 = getelementptr i8, i8* %tmp.408, i64 %tmp.406
  store i8 0, i8* %tmp.411
  %tmp.412 = getelementptr inbounds [2 x i8], [2 x i8]* @.str.4, i32 0, i32 0
  %tmp.413 = icmp eq i8* %tmp.408, null
  %tmp.414 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.415 = select i1 %tmp.413, i8* %tmp.414, i8* %tmp.408
  %tmp.416 = icmp eq i8* %tmp.412, null
  %tmp.417 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.418 = select i1 %tmp.416, i8* %tmp.417, i8* %tmp.412
  %tmp.419 = call i64 @strlen(i8* %tmp.415)
  %tmp.420 = call i64 @strlen(i8* %tmp.418)
  %tmp.421 = add i64 %tmp.419, %tmp.420
  %tmp.422 = add i64 %tmp.421, 1
  %tmp.423 = call i8* @malloc(i64 %tmp.422)
  %tmp.424 = getelementptr i8, i8* %tmp.423, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.424, i8* align 1 %tmp.415, i64 %tmp.419, i1 false)
  %tmp.425 = getelementptr i8, i8* %tmp.423, i64 %tmp.419
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.425, i8* align 1 %tmp.418, i64 %tmp.420, i1 false)
  %tmp.426 = getelementptr i8, i8* %tmp.423, i64 %tmp.421
  store i8 0, i8* %tmp.426

  %tmp.427 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.428 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.427, i32 0, i32 1

  %tmp.429 = load i32, i32* %tmp.428
  %tmp.430 = alloca [21 x i8], align 1
  %tmp.431 = getelementptr inbounds [21 x i8], [21 x i8]* %tmp.430, i32 0, i32 0
  %tmp.432 = getelementptr inbounds [3 x i8], [3 x i8]* @.int_fmt, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %tmp.431, i8* %tmp.432, i32 %tmp.429)
  %tmp.433 = icmp eq i8* %tmp.423, null
  %tmp.434 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.435 = select i1 %tmp.433, i8* %tmp.434, i8* %tmp.423
  %tmp.436 = icmp eq i8* %tmp.431, null
  %tmp.437 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.438 = select i1 %tmp.436, i8* %tmp.437, i8* %tmp.431
  %tmp.439 = call i64 @strlen(i8* %tmp.435)
  %tmp.440 = call i64 @strlen(i8* %tmp.438)
  %tmp.441 = add i64 %tmp.439, %tmp.440
  %tmp.442 = add i64 %tmp.441, 1
  %tmp.443 = call i8* @malloc(i64 %tmp.442)
  %tmp.444 = getelementptr i8, i8* %tmp.443, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.444, i8* align 1 %tmp.435, i64 %tmp.439, i1 false)
  %tmp.445 = getelementptr i8, i8* %tmp.443, i64 %tmp.439
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.445, i8* align 1 %tmp.438, i64 %tmp.440, i1 false)
  %tmp.446 = getelementptr i8, i8* %tmp.443, i64 %tmp.441
  store i8 0, i8* %tmp.446
  %tmp.447 = getelementptr inbounds [2 x i8], [2 x i8]* @.str.5, i32 0, i32 0
  %tmp.448 = icmp eq i8* %tmp.443, null
  %tmp.449 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.450 = select i1 %tmp.448, i8* %tmp.449, i8* %tmp.443
  %tmp.451 = icmp eq i8* %tmp.447, null
  %tmp.452 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.453 = select i1 %tmp.451, i8* %tmp.452, i8* %tmp.447
  %tmp.454 = call i64 @strlen(i8* %tmp.450)
  %tmp.455 = call i64 @strlen(i8* %tmp.453)
  %tmp.456 = add i64 %tmp.454, %tmp.455
  %tmp.457 = add i64 %tmp.456, 1
  %tmp.458 = call i8* @malloc(i64 %tmp.457)
  %tmp.459 = getelementptr i8, i8* %tmp.458, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.459, i8* align 1 %tmp.450, i64 %tmp.454, i1 false)
  %tmp.460 = getelementptr i8, i8* %tmp.458, i64 %tmp.454
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.460, i8* align 1 %tmp.453, i64 %tmp.455, i1 false)
  %tmp.461 = getelementptr i8, i8* %tmp.458, i64 %tmp.456
  store i8 0, i8* %tmp.461

  %tmp.462 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.463 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.462, i32 0, i32 4

  %tmp.464 = load i32, i32* %tmp.463
  %tmp.465 = alloca [21 x i8], align 1
  %tmp.466 = getelementptr inbounds [21 x i8], [21 x i8]* %tmp.465, i32 0, i32 0
  %tmp.467 = getelementptr inbounds [3 x i8], [3 x i8]* @.int_fmt, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %tmp.466, i8* %tmp.467, i32 %tmp.464)
  %tmp.468 = icmp eq i8* %tmp.458, null
  %tmp.469 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.470 = select i1 %tmp.468, i8* %tmp.469, i8* %tmp.458
  %tmp.471 = icmp eq i8* %tmp.466, null
  %tmp.472 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.473 = select i1 %tmp.471, i8* %tmp.472, i8* %tmp.466
  %tmp.474 = call i64 @strlen(i8* %tmp.470)
  %tmp.475 = call i64 @strlen(i8* %tmp.473)
  %tmp.476 = add i64 %tmp.474, %tmp.475
  %tmp.477 = add i64 %tmp.476, 1
  %tmp.478 = call i8* @malloc(i64 %tmp.477)
  %tmp.479 = getelementptr i8, i8* %tmp.478, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.479, i8* align 1 %tmp.470, i64 %tmp.474, i1 false)
  %tmp.480 = getelementptr i8, i8* %tmp.478, i64 %tmp.474
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.480, i8* align 1 %tmp.473, i64 %tmp.475, i1 false)
  %tmp.481 = getelementptr i8, i8* %tmp.478, i64 %tmp.476
  store i8 0, i8* %tmp.481
  %tmp.482 = getelementptr inbounds [2 x i8], [2 x i8]* @.str.6, i32 0, i32 0
  %tmp.483 = icmp eq i8* %tmp.478, null
  %tmp.484 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.485 = select i1 %tmp.483, i8* %tmp.484, i8* %tmp.478
  %tmp.486 = icmp eq i8* %tmp.482, null
  %tmp.487 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.488 = select i1 %tmp.486, i8* %tmp.487, i8* %tmp.482
  %tmp.489 = call i64 @strlen(i8* %tmp.485)
  %tmp.490 = call i64 @strlen(i8* %tmp.488)
  %tmp.491 = add i64 %tmp.489, %tmp.490
  %tmp.492 = add i64 %tmp.491, 1
  %tmp.493 = call i8* @malloc(i64 %tmp.492)
  %tmp.494 = getelementptr i8, i8* %tmp.493, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.494, i8* align 1 %tmp.485, i64 %tmp.489, i1 false)
  %tmp.495 = getelementptr i8, i8* %tmp.493, i64 %tmp.489
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.495, i8* align 1 %tmp.488, i64 %tmp.490, i1 false)
  %tmp.496 = getelementptr i8, i8* %tmp.493, i64 %tmp.491
  store i8 0, i8* %tmp.496

  %tmp.497 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.498 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.497, i32 0, i32 5

  %tmp.499 = load i32, i32* %tmp.498
  %tmp.500 = alloca [21 x i8], align 1
  %tmp.501 = getelementptr inbounds [21 x i8], [21 x i8]* %tmp.500, i32 0, i32 0
  %tmp.502 = getelementptr inbounds [3 x i8], [3 x i8]* @.int_fmt, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %tmp.501, i8* %tmp.502, i32 %tmp.499)
  %tmp.503 = icmp eq i8* %tmp.493, null
  %tmp.504 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.505 = select i1 %tmp.503, i8* %tmp.504, i8* %tmp.493
  %tmp.506 = icmp eq i8* %tmp.501, null
  %tmp.507 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.508 = select i1 %tmp.506, i8* %tmp.507, i8* %tmp.501
  %tmp.509 = call i64 @strlen(i8* %tmp.505)
  %tmp.510 = call i64 @strlen(i8* %tmp.508)
  %tmp.511 = add i64 %tmp.509, %tmp.510
  %tmp.512 = add i64 %tmp.511, 1
  %tmp.513 = call i8* @malloc(i64 %tmp.512)
  %tmp.514 = getelementptr i8, i8* %tmp.513, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.514, i8* align 1 %tmp.505, i64 %tmp.509, i1 false)
  %tmp.515 = getelementptr i8, i8* %tmp.513, i64 %tmp.509
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.515, i8* align 1 %tmp.508, i64 %tmp.510, i1 false)
  %tmp.516 = getelementptr i8, i8* %tmp.513, i64 %tmp.511
  store i8 0, i8* %tmp.516
  %tmp.517 = getelementptr inbounds [2 x i8], [2 x i8]* @.str.7, i32 0, i32 0
  %tmp.518 = icmp eq i8* %tmp.513, null
  %tmp.519 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.520 = select i1 %tmp.518, i8* %tmp.519, i8* %tmp.513
  %tmp.521 = icmp eq i8* %tmp.517, null
  %tmp.522 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.523 = select i1 %tmp.521, i8* %tmp.522, i8* %tmp.517
  %tmp.524 = call i64 @strlen(i8* %tmp.520)
  %tmp.525 = call i64 @strlen(i8* %tmp.523)
  %tmp.526 = add i64 %tmp.524, %tmp.525
  %tmp.527 = add i64 %tmp.526, 1
  %tmp.528 = call i8* @malloc(i64 %tmp.527)
  %tmp.529 = getelementptr i8, i8* %tmp.528, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.529, i8* align 1 %tmp.520, i64 %tmp.524, i1 false)
  %tmp.530 = getelementptr i8, i8* %tmp.528, i64 %tmp.524
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.530, i8* align 1 %tmp.523, i64 %tmp.525, i1 false)
  %tmp.531 = getelementptr i8, i8* %tmp.528, i64 %tmp.526
  store i8 0, i8* %tmp.531

  %tmp.532 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.533 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.532, i32 0, i32 6

  %tmp.534 = load i32, i32* %tmp.533
  %tmp.535 = alloca [21 x i8], align 1
  %tmp.536 = getelementptr inbounds [21 x i8], [21 x i8]* %tmp.535, i32 0, i32 0
  %tmp.537 = getelementptr inbounds [3 x i8], [3 x i8]* @.int_fmt, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %tmp.536, i8* %tmp.537, i32 %tmp.534)
  %tmp.538 = icmp eq i8* %tmp.528, null
  %tmp.539 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.540 = select i1 %tmp.538, i8* %tmp.539, i8* %tmp.528
  %tmp.541 = icmp eq i8* %tmp.536, null
  %tmp.542 = getelementptr inbounds [1 x i8], [1 x i8]* @.empty_str, i32 0, i32 0
  %tmp.543 = select i1 %tmp.541, i8* %tmp.542, i8* %tmp.536
  %tmp.544 = call i64 @strlen(i8* %tmp.540)
  %tmp.545 = call i64 @strlen(i8* %tmp.543)
  %tmp.546 = add i64 %tmp.544, %tmp.545
  %tmp.547 = add i64 %tmp.546, 1
  %tmp.548 = call i8* @malloc(i64 %tmp.547)
  %tmp.549 = getelementptr i8, i8* %tmp.548, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.549, i8* align 1 %tmp.540, i64 %tmp.544, i1 false)
  %tmp.550 = getelementptr i8, i8* %tmp.548, i64 %tmp.544
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp.550, i8* align 1 %tmp.543, i64 %tmp.545, i1 false)
  %tmp.551 = getelementptr i8, i8* %tmp.548, i64 %tmp.546
  store i8 0, i8* %tmp.551
  ret i8* %tmp.548
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

  %tmp.552 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.553 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.552, i32 0, i32 1

  %tmp.554 = load i32, i32* %tmp.553

  %tmp.555 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.outra
  %tmp.556 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.555, i32 0, i32 1

  %tmp.557 = load i32, i32* %tmp.556
  %tmp.558 = icmp eq i32 %tmp.554, %tmp.557

  %tmp.559 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.560 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.559, i32 0, i32 2

  %tmp.561 = load i32, i32* %tmp.560

  %tmp.562 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.outra
  %tmp.563 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.562, i32 0, i32 2

  %tmp.564 = load i32, i32* %tmp.563
  %tmp.565 = icmp eq i32 %tmp.561, %tmp.564
  %tmp.566 = and i1 %tmp.558, %tmp.565

  %tmp.567 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.568 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.567, i32 0, i32 3

  %tmp.569 = load i32, i32* %tmp.568

  %tmp.570 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.outra
  %tmp.571 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.570, i32 0, i32 3

  %tmp.572 = load i32, i32* %tmp.571
  %tmp.573 = icmp eq i32 %tmp.569, %tmp.572
  %tmp.574 = and i1 %tmp.566, %tmp.573

  %tmp.575 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.576 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.575, i32 0, i32 4

  %tmp.577 = load i32, i32* %tmp.576

  %tmp.578 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.outra
  %tmp.579 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.578, i32 0, i32 4

  %tmp.580 = load i32, i32* %tmp.579
  %tmp.581 = icmp eq i32 %tmp.577, %tmp.580
  %tmp.582 = and i1 %tmp.574, %tmp.581

  %tmp.583 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.584 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.583, i32 0, i32 5

  %tmp.585 = load i32, i32* %tmp.584

  %tmp.586 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.outra
  %tmp.587 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.586, i32 0, i32 5

  %tmp.588 = load i32, i32* %tmp.587
  %tmp.589 = icmp eq i32 %tmp.585, %tmp.588
  %tmp.590 = and i1 %tmp.582, %tmp.589

  %tmp.591 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.592 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.591, i32 0, i32 6

  %tmp.593 = load i32, i32* %tmp.592

  %tmp.594 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.outra
  %tmp.595 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.594, i32 0, i32 6

  %tmp.596 = load i32, i32* %tmp.595
  %tmp.597 = icmp eq i32 %tmp.593, %tmp.596
  %tmp.598 = and i1 %tmp.590, %tmp.597
  ret i1 %tmp.598
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

  %tmp.599 = load i32, i32* %var.ano

  %tmp.600 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.601 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.600, i32 0, i32 1
  store i32 %tmp.599, i32* %tmp.601

  %tmp.602 = load i32, i32* %var.mes

  %tmp.603 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.604 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.603, i32 0, i32 2
  store i32 %tmp.602, i32* %tmp.604

  %tmp.605 = load i32, i32* %var.dia

  %tmp.606 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.607 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.606, i32 0, i32 3
  store i32 %tmp.605, i32* %tmp.607

  %tmp.608 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.609 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.608, i32 0, i32 4
  store i32 0, i32* %tmp.609

  %tmp.610 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.611 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.610, i32 0, i32 5
  store i32 0, i32* %tmp.611

  %tmp.612 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.613 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.612, i32 0, i32 6
  store i32 0, i32* %tmp.613
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

  %tmp.614 = load i32, i32* %var.ano

  %tmp.615 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.616 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.615, i32 0, i32 1
  store i32 %tmp.614, i32* %tmp.616

  %tmp.617 = load i32, i32* %var.mes

  %tmp.618 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.619 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.618, i32 0, i32 2
  store i32 %tmp.617, i32* %tmp.619

  %tmp.620 = load i32, i32* %var.dia

  %tmp.621 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.622 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.621, i32 0, i32 3
  store i32 %tmp.620, i32* %tmp.622

  %tmp.623 = load i32, i32* %var.hora

  %tmp.624 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.625 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.624, i32 0, i32 4
  store i32 %tmp.623, i32* %tmp.625

  %tmp.626 = load i32, i32* %var.minuto

  %tmp.627 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.628 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.627, i32 0, i32 5
  store i32 %tmp.626, i32* %tmp.628

  %tmp.629 = load i32, i32* %var.segundo

  %tmp.630 = load %class.Sistema_Data_Data*, %class.Sistema_Data_Data* %var.self
  %tmp.631 = getelementptr inbounds %class.Sistema_Data_Data, %class.Sistema_Data_Data* %tmp.630, i32 0, i32 6
  store i32 %tmp.629, i32* %tmp.631
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
define i8* @"Sistema_Rede_ClienteHttp::Get"(%class.Sistema_Rede_ClienteHttp* %param.self, i8* %param.url) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ClienteHttp*, align 8
  store %class.Sistema_Rede_ClienteHttp* %param.self, %class.Sistema_Rede_ClienteHttp** %var.self
  %var.url = alloca i8*, align 8
  store i8* %param.url, i8** %var.url
  unreachable ; O método 'Get' deve ter um retorno
}
define i8* @"Sistema_Rede_ClienteHttp::Post"(%class.Sistema_Rede_ClienteHttp* %param.self, i8* %param.url, i8* %param.corpo) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ClienteHttp*, align 8
  store %class.Sistema_Rede_ClienteHttp* %param.self, %class.Sistema_Rede_ClienteHttp** %var.self
  %var.url = alloca i8*, align 8
  store i8* %param.url, i8** %var.url
  %var.corpo = alloca i8*, align 8
  store i8* %param.corpo, i8** %var.corpo
  unreachable ; O método 'Post' deve ter um retorno
}
define i8* @"Sistema_Rede_ClienteHttp::Put"(%class.Sistema_Rede_ClienteHttp* %param.self, i8* %param.url, i8* %param.corpo) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ClienteHttp*, align 8
  store %class.Sistema_Rede_ClienteHttp* %param.self, %class.Sistema_Rede_ClienteHttp** %var.self
  %var.url = alloca i8*, align 8
  store i8* %param.url, i8** %var.url
  %var.corpo = alloca i8*, align 8
  store i8* %param.corpo, i8** %var.corpo
  unreachable ; O método 'Put' deve ter um retorno
}
define i8* @"Sistema_Rede_ClienteHttp::Delete"(%class.Sistema_Rede_ClienteHttp* %param.self, i8* %param.url) { 
entry:
  %var.self = alloca %class.Sistema_Rede_ClienteHttp*, align 8
  store %class.Sistema_Rede_ClienteHttp* %param.self, %class.Sistema_Rede_ClienteHttp** %var.self
  %var.url = alloca i8*, align 8
  store i8* %param.url, i8** %var.url
  unreachable ; O método 'Delete' deve ter um retorno
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

  %tmp.632 = load i8*, i8** %var.baseUrl

  %tmp.633 = load %class.Sistema_Rede_ClienteHttp*, %class.Sistema_Rede_ClienteHttp* %var.self
  %tmp.634 = getelementptr inbounds %class.Sistema_Rede_ClienteHttp, %class.Sistema_Rede_ClienteHttp* %tmp.633, i32 0, i32 1
  store i8* %tmp.632, i8** %tmp.634
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
