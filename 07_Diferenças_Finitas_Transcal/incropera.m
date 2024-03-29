% Exercicio Incropera 4.75 com e M�todo de Elimina��o e Iterativo de Gauss
% sem gera��o de calor interna com distribui��o de calor em chips de 18mm de largura aplicado
% em 1 camada de material sumidouro para dispers�o do calor dos chip
% T chip = 85�C;
% ap�s 22,5mm do sumidouro = 25�C;
% Distribui��o de calor no sumidouro ???? (22,5mm);

Td = 85
Ks = 300
Ts = 25
%deltax = 9
%deltay = 4,5

%No Sumidouro:
%N�s vizinhos � T da superf�cie superior s�o (T=85�C): 1, 2, 3, 4, 5, 6
%N�s vizinhos � T da superf�cie inferior s�o (T=25�C): 19, 20, 21, 22, 23,
%24
%N�s vizinhos � lateral esquerda s�o: 1, 7, 13, 19
%N�s vizinhos � lateral direita s�o: 6, 12, 18, 24

for i = 1, 6 %laterais em contato com T=0�C e 85�C
    
Tn(i) == ((Tn(i+1) + (4)*(Tn(i+6) + 340 )) / (10))

for i = 7 %lateral esquerda apenas em contato com T=0�C
Tn(i) == ((Tn(i+1) + (4)*((Tn(i+6) + Tn(i-6)))) / (10))

for i = 2, 3, 4, 5 %superf�cie superior em contato com T=85�C
Tn(i) == ((Tn(i-1) + Tn(i+1) + (4)*(Tn(i+6) + 340 )) / (10))

for i = 8, 9, 10, 11, 12 %superf�cie interna
Tn(i) == (((Tn(i-1) + Tn(i+1) + (4)*((Tn(i+6) + Tn(i-6))) / (10))))
   
for i = 13 %lateral esquerda apenas em contato com T=0�C
Tn(i) == (((Tn(i-1) + (Tn(i+6) + (4)*Tn(i-6)))) / (10))

for i = 14, 15, 16, 17 %superf�cie interna
Tn(i) == ((Tn(i-1) + Tn(i+1) + (4)*((Tn(i+6) + Tn(i-6)))) / (10))

for i = 18 %lateral direita apenas em contato com T=0�C  
Tn(i) == (((Tn(i-1) + ((4)*(Tn(i+6)) + Tn(i-6)))) / (10))

for i = 19, 24 %laterais em contato com T=0�C e 85�C
Tn(i) == (((Tn(i-1) + (Tn(i-6)) + (100))) / (10))

for i = 20, 21, 22, 23 %superf�cie interna  
    
    
    
Tn(i) == (((Tn(i-1) + Tn(i+1) + (100) +  Tn(i-6)) / (10)))
if |Tn,(i) - Tv(i)| < e, paratodo i
    if Tv(i) == Tn(i)
    if yes Tn(i)
        if not for i = 1,23
                Tv(i) == Tn(i)
        end