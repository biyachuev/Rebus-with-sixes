:- use_module(library(clpfd)).
solve(Vars) :-
    Vars = [A,B,C,D,E,F,G,H,I,J,K,M,N,P,Q,S], Vars ins 0..9, A #\= 0, D #\= 0, I #\= 0, K #\= 0, S #\= 0,
    (100*A + 10*B + C) * (100*D + 10*E + F) #= 10000*S + 1000*Q + 100*P + 10*N + G,
    (100*A + 10*B + C) * F #= 1000*I + 600 + 10*H + G,
    (100*A + 10*B + C) * E #= 1000*K + 100*J + 66,
    (100*A + 10*B + C) * D #= 606 + 10*M,   
    label(Vars).
% solve([A,B,C,D,E,F,G,H,I,J,K,M,N,P,Q,S]).
% Visual Studio Code + VSC-Prolog + swi-prolog
% https://swish.swi-prolog.org/p/Rebus%20with%20%22*%22%20and%20%226%22.pl
%       A B C
%       D E F
%     I 6 H G
%   K J 6 6
%   6 M 6
%   S Q P N G
% ABC*F = I6HG
% ABC*E = KJ66
% ABC*D = 6M6
% ABC*DEF = SQPNG
% solve the rebus
%       ***
%       ***
%       ---
%      *6**
%     **66
%     6*6
%     -----
%     *****