%{

Poss�vel resolo��o para o problema 4.75 usando Diferen�as Finitas

Objetivos - Determinar as Temperaturas em cada n�


%}


delta_x = 9 ; 
delta_y = 4.5 ; 
interacoes = 300; 
erro = 1e-2; 
nos_x = 6; % N�mero de n�s no eixo x
nos_y = 4; % N�mero de n�s no eixo y

T = zeros(nos_x, nos_y);

T(:, 1) = 0;  
T(:, nos_y) = 0;   
T(1, :) = 85;   
T(nos_x, :) = 25;

for iter = 1:interacoes
    
    T_antigo = T;
    
    for i = 2:nos_x-1
        for j = 2:nos_y-1
            T(i, j) = (T(i+1, j) + T(i, j-1) + T(i-1, j) + T(i, j+1)) / 4; % Equa��o 4.29 do Incropera
        end
    end
    
    if max(abs(T(:) - T_antigo(:))) < erro % Equa��o 4.52
        break;
    end
end

disp('Temperaturas:');
disp(T);
